Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45784C74
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7118AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661545252;
	bh=1l0Yrf3AqlEgn3qhiHyPluNT9yC9JAyZwZhK60O38Tc=;
	h=To:Subject:From:Date:From;
	b=i760e2Vy4T6dk24f8mMBGKUoyxYEFM2Q0n1/+V32b5wKwW+rBKNDEq25wMGhk+NTV
	 BqzZna73BM4BZve/oeLaHSOJNmiCdwRMNOqR4rc9Mdq7CTobleuFFoSUu2LPH+MK9c
	 u4PBaLoUVqT3/tmIf9z3oS7butzvffzidMfoRLUUmtvFAFU90061LAll7/hQNs5DiL
	 OWUU64QRQM3IzLNe1EnSmwzQErL1R9nEOci4T0J435YaWB+CNmdGr/oGuvvi4d4iQB
	 M+8b93lat4eNzU0c3BWp8OLQ8D749sFJwq8CJDvwR7NX/QuyXvgO191enYqx5nDmUy
	 U56T5H9VP+fYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55905ECAAD6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154525234.8173.3454657975866603073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831b07e9b2dd4058e2b17f85e0bd2db8f2e3080df7a08ab30deaa9ffb3e05d81
Date: Fri, 26 Aug 2022 20:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661545252
