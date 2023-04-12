Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9FA160
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 04:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC01AC43443
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 04:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681274525;
	bh=OxSZzv/u5mSFaBGqcyM2gG0JTbT+wg1RY+PYVZ+55PA=;
	h=To:Subject:From:Date:From;
	b=UgokTliBjrGwcDLDDJU9zr5iefVEvzgzH1z0/6JAXlu2p78NvzK5JtndvpPKf0DGu
	 GxYC8TK020PM2jHXQEJNfqxg2mLdUhGNsptdab9JPeJ/iCgYaESjKs0PFrFiVtFEze
	 nRcc98S1VFWwPsEGIQUcLiaoZ6PgvxsK2p5uWcG81SsEk0+09SyHg2EF2gxs/6jpNc
	 RM64nsfSi62Pt+E/4L47vFtBPiO3ZzuX4XdiYnMEabOP2AInEMJLHgBH3dKsTET6Vd
	 Yq/rHQXZ5aU5Alm831Ec3KzVo+P7cBtYOM5Zpsf0dKm2jwCyvoCcuvvmE86989VEuA
	 IIbQSc9My3U3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FB7C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 04:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168127452572.23932.11428639780296698314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f979869873d036c0872e4d8d8d9f9abcce1a1b1076c15d8012cb8d06d056c7
Date: Wed, 12 Apr 2023 04:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681274525
