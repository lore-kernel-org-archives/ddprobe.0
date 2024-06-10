Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E953C0C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717988843; cv=none; b=VMRefTRDipShFcv/WoE0qmJGQhhzMG9bKiCvVVjAszjMz7lHfGJhjtAPoF584ytVBiWaCy0n2xM8bVnIgYxoXZHIHYBy/LrKcIwRyFjgue2fdSkGQeJtf2+jWnjNE5BrgrMM+8+FLSR89AvAr4cHSE57rcQyJMl3oBtVzoX42RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717988843; c=relaxed/simple;
	bh=uC1qW0mZlSjogEX0SUB1NEuLMxEM53klPOAN9pTm9OQ=;
	h=To:Subject:From:Message-Id:Date; b=CdKNzrXzDVnsLxcZt6Rv9zDaKL1CooizqyHsVZ5PAPdPgwY17p8yK0+CH8OW4jT/VNDijFmohx+rPzv88+xXMLZiAhER8fbeh79xO9rnIdyaZAY1uxVsVgkrXx1bBYBSAlj9m0KrCq8oO8uWcLFkY+Y52F86pbPUI3aP1Me/K50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBPEwU4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBPEwU4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE74C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717988842;
	bh=uC1qW0mZlSjogEX0SUB1NEuLMxEM53klPOAN9pTm9OQ=;
	h=To:Subject:From:Date:From;
	b=HBPEwU4IBU3RraE/tduBZtLrPIOK2SnS3d1X/8XMLXJ7C7qdr9n0Jan3ym0Vjpw1O
	 NUtNPKvufwyMzwom8xZmPsmHIEgn9COrb6JS6EX/VfCy1xmprZGe6Nc5U5FGdAkajS
	 MqS1MmBPxPGANSsaAJK3/nVYdY/LsANKy+PcveeiQ0vuUNoQGUyoM37Wwx+wSpb23d
	 g9TRZvPwPVrh9kFVp9PYZrC7oSxE67u2xkWSSo0wGcZ9JMOiAYvXxCFlzNyRhsiVnP
	 Zzl69lIacg6Qjhj20ucRgPNamtlx7R6LZ4Lv20Y7eArHHR2e/TNMiN5KV1lyWZrN5K
	 1ephx536eEyHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4005C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798884277.23825.4197996860568619179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1cc10b52085e28722de5d6c2b91f2bbe1e951c2fc495e23dbdb7480c75e80f
Date: Mon, 10 Jun 2024 03:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717988842
