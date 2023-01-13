Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE52640
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B57C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673586687;
	bh=Mwib35P1CC9nOZGKTwRUOXXn4aWH0p2UjVN+95SrrSQ=;
	h=To:Subject:From:Date:From;
	b=ZS5MVCQPkmIy99TCGcfqrJwF9cNk6ljOTjgGPxWAAIoJlAyBplXJjgupDr9rr9Qn1
	 x+uSHjHriDdWGNEs/Dh1yjFmtscdU2K17OLaoKt41rqAwsWXfwIvHqriTj7ZHzfSrg
	 DPSBPeo43VXfCgGJVBbmgMCVKb++3VTWUnKKZzexCOZZ6vAkb5SRl6mLM2+RYLbbtU
	 M4enlpRHU96rep5Rlzu7DH+oklVB1I38iAnqZ2ic6vrLYzN1YjSkzQU0GymD6HAo/q
	 0kFDn1V/fRWrQKSBhtgMK/QnCuprUftrp/4A/MqhoeJ/detJoM6+2usJBXzgOtscYa
	 kPOx9+DGOm2pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65983C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167358668740.13986.14624930712068829616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ca640140867f34108a9d76aac6ee73f3f4246b63bc219a3854429505d2b472
Date: Fri, 13 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673586687
