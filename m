Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DFB4107A6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE89EC433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687019408;
	bh=hWw/cKQkV7j9L1VD6uriahb3DHj1TtumIj7S/u9hyFQ=;
	h=To:Subject:From:Date:From;
	b=lo5atyaw1kq0kUwXspeDRgaNpPzOyHobE13kaTYqPcR0l9dzIffJPtox/CdRj2MF2
	 K2PFY51yEBO/G/NmKQwChbEqbtHiKv6f8Kvl1psTYHJICu6CFbvFsbl/76X2Qtzyzx
	 fjL8MdXpo9x6tHVOxPEctDYQ/B5aownsJtikb0gRlxt+TYdhmI4VS9X4S9EzjebUJG
	 QSQ4Tl2v0RU27TL++DUg61O963oiPF9TCeEfmwNvyuCOzPjhHgti0eoUCkm4TpK64y
	 Iurq3PS6pQWRmm2Q/4S5K2bWiyvBly5No+HXmfCBKCRUvVRXVbfFCU01qqvQx4hdX3
	 ru0MHHr4GejvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCCDEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168701940875.12381.7078195098363022130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680dc740d0f5f07fa1cd674f3fb46177f90341b8210c711ba24fcb22455be7c2
Date: Sat, 17 Jun 2023 16:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687019408
