Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8483E26ED56
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764954174; cv=none; b=lHJ8a9k5mqj3C+HZMm3dsk8g2D/jTzNRJNbluxYCvUzLpClAgSn/yI4Skqicenkq6sM7/Cf3v5JLimTjeHGzUMC9tu2XL3utpdEcK2aAIpF2Sd/Pj23iZuOVJtmRdGQyJtgFS2qys9XNssBw/iterxuq5glpemnGJa2XHKW6At8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764954174; c=relaxed/simple;
	bh=6/+JUN8TrnBvqjTbIaLxHvWf3M5xBnPIm9GW+BGQyzw=;
	h=To:Subject:From:Message-Id:Date; b=SLiZiOpsYCa0p7NBRndK+RDe5L66Q5hHZVWgds2RQlfCdl/CKwU5T7oAgq8KZwYkFCKBX/yiBiH1sB6o1mg/mHKpEZlFchBwOyLOdUKMGnk+dBvvIQ8TC+EXW0GyVhSPW9GCLlAIhkLF839bEDeeSX1llm0dk/tsmpzX8OZWFko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EB5yOOQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EB5yOOQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12FAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764954173;
	bh=6/+JUN8TrnBvqjTbIaLxHvWf3M5xBnPIm9GW+BGQyzw=;
	h=To:Subject:From:Date:From;
	b=EB5yOOQgPOuDdoNuYpSHUWXtOiTiN+BoOkVy2roSY6eoCPWTbAAmanOo7KOxsURJ+
	 w3uomPOIG071FGlf2MQACTYsYi+qFvXX3a6fOMYpFr+V34DYmbf2tPyIvLg5KJ2vYn
	 HcSD1iNb1z/jG4Lf1a/2pHSkVaABi30bhm4pArFeU7qKZnbMwT+fYwQiYn+mbg91EP
	 /bQYO9Zt60VIgGL25cd/0EqTQqQqfeT1HE98A/AUFaQfvfyb27yTRUj/S0HyJS0Vr8
	 AZ7sgC2vtVsd4JCpN+4s9iIUliZXCbiz5D7F4HNw/5LxXmF1NowUVNqwkLW+6a41tb
	 876KZcJWVwApA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C831D33992
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495417359.16207.7391038443691854764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcbfa659558516f65877c4617ba67f3de57fb49df026d143868525be634b625
Date: Fri, 05 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764954173
