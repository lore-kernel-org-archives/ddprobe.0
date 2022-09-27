Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2EA965B
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68FF3C433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664265653;
	bh=PTMxIEMLS0Mw/Yob/CXe2JJr797Lf9eM8QNbrgzZVSo=;
	h=To:Subject:From:Date:From;
	b=T3ary/TeKruTnttGL3D3xcmYxDRrhsDCsCPlkSHg/Haq0siE9FpanLkGr1DmEw5Fn
	 g0+8CPocVJXaXlkmALhrkxQDltshGJCtAHvr/ENBrwZEkGOGLPZi3uB2HN/NlrRUUC
	 PN9Ep5bbbR2pTHxKrGBmgfolycUJWyKQMBDoza9kZeQ8Bx+AMZf6YM0yjEKxuS+4qz
	 l8rEgM4X9yomqjTQfPCdNN78khubmoqC/QLaWAeon8ela2jSyTPAPYON3a6omVGrNS
	 /Wzr9nL3tAynVBab1DBpk2AuqvH1aWqzDCft06V0v4oRTV0RvdvjQwP0rbk1yuvNDo
	 L6BDVNIm3Vpag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F22C6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166426565333.16160.11398090022729715277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ad7217f3512e57e2b342e8fe3c10ecaa307a5f2b883df838abd74b2c8560b2
Date: Tue, 27 Sep 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664265653
