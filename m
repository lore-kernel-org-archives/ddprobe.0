Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EB526FDB3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762366794; cv=none; b=ViLUrwapukHmM5nUbjYrocGRk2NS0nZZBwT7i7mj+ggol9xP5n50ZHUp8NVW7wafIceZXTfwDVv6UMuGeO7cMixu9edO6TUVeoTdWg3awPDA4k6KnsiEgcWYvbSWIa/54/rDAGOTvssYsY/GqROBbESOiocUQj1LEP7UDmZFiPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762366794; c=relaxed/simple;
	bh=uWB2X0RykmPfawwxkxbOq9FlIRBwGXg/IirwdFHlFEo=;
	h=To:Subject:From:Message-Id:Date; b=aC74qO3UV5pVgK0kMCujMpcKOLB64XnJC1XBxRhupHfbUQ3HriBgO/HpqsXMeBKtmGt2hiUTc1PwmJ6p9uW1TEaF3EnLZ1tH2iInduRw6/YsU7LkfsKpTqXXAFrBVO/Sd3QOEHp8h3IKJQhcspyfQgkDPGMaXvRuZjpsUlO0EmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTgBwLXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTgBwLXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B2A7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762366793;
	bh=uWB2X0RykmPfawwxkxbOq9FlIRBwGXg/IirwdFHlFEo=;
	h=To:Subject:From:Date:From;
	b=XTgBwLXqzxxNxUEBJ2XF58lgMUKDSLq4r8LuuLHyA9sR3S+ud1ovAKiOXuYDcR419
	 VVQgp4hQ3k08fdXw7SNoMm9dHp6Og3FIEoZuhetGLO2V7685BLckxOmd3w1/vA14yo
	 nOpu9tXd/HXfYpgijYmAKSFg0lIpB0uLXnlo7SdX+RUei3JT2RO2BC0NeQQPY+2xMv
	 qno9SqSDw+gbG/C5OnelOMWxaKmht+ivrb7bjO+isSUkFhNFUT8AgamwlNuNMlAmIg
	 VucVwR9KmSjlVwhcSpc6WzAk4MestnoC9m8Hf7+d4xF70QDY3h4AWYXsnwmtO3MWtj
	 j0ecOfyzxa1Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E799CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236679357.6695.7326009527099047635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a091ec4fd47ccf459b88b9dc9051f19b3cb6f4f6755f0d5c2cda841d187b23b8
Date: Wed, 05 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762366793
