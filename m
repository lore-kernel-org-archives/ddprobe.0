Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D7F2F25
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6485AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663926653;
	bh=CN1y7lKAuLiQcEDJcW4N5n2FoSkNyLyR/clvGRmWaGI=;
	h=To:Subject:From:Date:From;
	b=EbX4N5qsZugMxmmwYcn4+4H9DVvUAA21uddx2r72QUN1QnIe1qNT5mPhtMPJBxUQ4
	 MnoPLQr7QDyEsdnVXOW7bOBkfAuWDJ9lTyJT65QszL8O0IUs4wrSlKrrRicD5AfyUx
	 dT5SW1Ea57TAhBB32KOAazNps9wJCizbXx0VpImut5VM9as2mMULFtGckQHU0sIgGI
	 YXSwtrbiGN3/1O0KRE+C7RfnX2oeMD+JgD/DdYNBeiWt1PSoxUnLxBLdY/9HLexehN
	 rsoBL0ofrChhKcKfRmKnP7HlRL3qbM64x0q6ZkYlPZowYLVwOysCk4i5MFqdWqxZxF
	 7a39/d1Pb5MSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F184C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166392665331.23298.7078001112630689347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d181b7cb7ed46c4852b032f0f5f3e8c0afa88164e3ee6889843afa06cb0b5d1
Date: Fri, 23 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663926653
