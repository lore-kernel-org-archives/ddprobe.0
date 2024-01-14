Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB222F4F3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsxsrfiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 777F3C433C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705256296;
	bh=wnPei4kj12s4mc2MWXGm9gd4J0loFg2eLbR56P6EInM=;
	h=To:Subject:From:Date:From;
	b=XsxsrfiAQDV7MOBCjn4087QQUgP1snvIoLoNFxw9QxIlKPbnv+39ZdlMp2Oy1SN5W
	 wvTN6hdxsUbQvoXyqZMUZDAxcPTW4UIPvhk53Pdoge0QRDdgkjs1LTXUTJO/INezbJ
	 ui4fPT8ocNgqgDtAcYAV847e0bc0yHOMMl5qTuj/9lprPRMAGvJjLV6NGS366L9s54
	 66ScnYfWholcQRdkQ5tF7jM5cbxEEvRqaI87dquwWcMoZRfjQTVGE3n+7trydSOZK4
	 r60r5v5mniLJvdOqL8HTyEsld86IGYYK2u4IxRqUG8WjvPE6KoUY8LMY0fGP7b2AuR
	 YpUeJcJRxCyZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDF6C47077
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170525629637.17727.1825593996645872181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e481ded6048da52b2f7591647fe3af9ccfd62a0529c602513d426284c85e967d
Date: Sun, 14 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705256296
