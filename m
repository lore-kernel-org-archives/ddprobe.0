Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E8F10792
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 20:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 182B2C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 20:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676492346;
	bh=Ep0dkFXrf7UpSyThe9hSLdGNouRIzOPFYXYpHJo3dnE=;
	h=To:Subject:From:Date:From;
	b=KNMWmgdhB/LWwdoXOsx7yDsf+xgk1hkP2kGonG+/EPF2Nah6cbfJaGqsipVgNl6Qw
	 Xub5LQviBDVt3j7jMW4fz9j1d2AFAzb91nIhsmIVsBU2131ng0nNQH0Xt/Xq4mFif6
	 S+8p3kdOLzoId3ZGFfoHcvPHZAeGIu8cn91aexvLrV6ubq6/SUTxi/9NydfkIFWwZ7
	 hmA3DkNav0AKlcuhvvRXHTv9XXBmtynvowg14CiMmNjZ3Udsikuv3p2hg2ERtv2b50
	 CCULygpr5RmKAiswrFpqsoN/qK7tdRQzkhlVkyfWa1MY/I79s/SbS7L1u4Ptf43R/Z
	 OvS8sgUCamq0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB934C636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 20:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167649234592.20700.10421848788445659002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f0e09b0d34d6792ba8082d27c7318fc587380cfad68c1bf8ec33012056ddc6
Date: Wed, 15 Feb 2023 20:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676492345
