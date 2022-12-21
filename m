Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8F323A4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78058C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671622287;
	bh=wyhZDqz5hwTVtXdTij9EL9ykMuDDXNnEpijoDxcTmaY=;
	h=To:Subject:From:Date:From;
	b=X7K4RbAQgIapqtPGUjreajuI/WGzyU4ChisCgSnxQzF12/bhXE4Zq3qYnVS8+v1z+
	 FgyTbwtFfQDHJFmjtAUKApg8sLJcfDSg3CQnQ0QU1xH/lHD1a3K4xvAuQFLFDscck1
	 RL5YAg0+rQRIW+A1l7YFKwXQ0uxt6vAzbfbXJBPj11R9cAOdsNHMqlbo5yL+N9D50p
	 RyLW7QGsqhh1hPzIDmPHYe09nY0p3efhm0L/vPGgqTIzlXzAmC4Jip7SE6/3+fbsXG
	 f2T89klKIIAbMGDDyhzNDLASVyzoCiZpuyxhWIpReXHD0LXHboyCU4r0HngMLDUCOA
	 hCCGsX+dLEcUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCA0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162228737.20455.10518914646332200813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07bea60d094b25f4083f2e12f7e50cd698590b8ca19d2cdd7636a6b020b1697e
Date: Wed, 21 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671622287
