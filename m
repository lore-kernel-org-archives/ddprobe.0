Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0022D51D
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAIu10WV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CEFAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697888296;
	bh=7lY2fBj13jXMRulsPS0sBP36SmhCEz6ON1YtLVHRcAw=;
	h=To:Subject:From:Date:From;
	b=AAIu10WVFt+vJ2UDo5ZhKrOUGRRP67wpfbTtZ2pzGGbgMkA7BeZuIdf3zY+sbkz57
	 /eHQ1UUl4avK8R55vlbHWUiMkoJs+s/5FEiHh0MJnljU8M8rDhVwKh+dvbWA0s48aB
	 qRwLno2YiWlKh2DCLxKjfPgVQclhrAtUbsqJqMVqcq2cxZdRh1Optkh4hc6IgSdEPL
	 bTvaZfLsn3KGsDNpo7qWf8IHqBbm6Rza0P3SmWnFkwGE4eN/44UKpX7vIiEQ0Gzlvo
	 dzx0EP//gasAcyfj0sREmmgd30ZIKVJ2oPJV1NS6C2LDWq5OnQkb+CtqOC5nLviRum
	 wCbvRr/iFHvNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F0C0C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169788829638.28422.1050968111746717603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990afa7df5c357118f9288bfa512532d21810a1b65834250e0d7e93334aa06c2
Date: Sat, 21 Oct 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697888296
