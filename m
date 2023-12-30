Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344D023BB
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4YaPb0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1838C433C9
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703905696;
	bh=Lc6KhsNMLXvg98yfMeglaeiNZR2jPQFoMKcX49kR0uE=;
	h=To:Subject:From:Date:From;
	b=U4YaPb0dWKyVuiK81HrVHMSrLHqM06Ixc5wiYKR4qMKSlNHKtlAk2SX/CzYr7+3RQ
	 SkndYXcIdpXyLYkFt7lMsqcB7HhXMTAuQTe22BsaCcSLe/EimZDa/hIi2Hg65gkL+g
	 Z/p7tUEJWTc4gzqFHxcl+sCtgSdUsTQqMO4YBuxIETFjqszL3uShZ03XR2juK8urYL
	 TJpV6iw56mm0q3fvxEVIRBdCOaYSQ0R6x3W1VqnHGXz6/LJNRzg9uLjtK1g3t8INkm
	 t/lNVLP2XDGvh5jQ9Ux+hKBx+TpSOffqVc5aBRvedxortY9mmgb6PhIXgbHmHA1+bS
	 wxa3IqOgOO7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83999C46CD4
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170390569647.24132.10260826495351590984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67150471189756c97f0797862d773db045593b540b6930c1873779274ec5f3fc
Date: Sat, 30 Dec 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703905696
