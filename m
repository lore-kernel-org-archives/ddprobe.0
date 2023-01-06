Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65431863
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E255C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673043087;
	bh=vgRKhhwNVweFEmaTdZLNfXJtsAI/2GiW8cGezVHVLm4=;
	h=To:Subject:From:Date:From;
	b=XZ/pBheYQKHRe/VwTsxow098nHGN0Ks23bG1f20omblNhDwRJ2XkzafjGJwmdZfDL
	 R5eXrWc+GAUE1j7pwG6D885ilBW4vwBLDPB0dhffOppZkxWygyGzJbFtBMLr8DKNJV
	 M/eF2R9LrgDQmQYXAAA/hpyUXJ3kHInBW0Pcvnjcjl3UUMesCt0xhQtwtzZ4Ayl3eR
	 vOcFPqAO5Z5iK+pfj3ZCldgENsd7Dcw+WJjbFPVWsEb6iCUknY7U6aXmdDM+FvfziH
	 pVXsvUMpCYv1rwmQLqptaDv1ED8mup7usXPhqJ5KOgDpTh4XO5/X0aeKIHitgMjpH/
	 V9IbaHDIFdOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B5CBC61DB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304308743.19229.9190710341455516526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41532e88094c5fe1e12164c8f562d3e2fac518342357320f18c1da3188466bb9
Date: Fri, 06 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673043087
