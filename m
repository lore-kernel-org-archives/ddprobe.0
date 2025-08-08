Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443322820A3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754671194; cv=none; b=Wz73anUDksw4RKHtwYPyOHHmvhwouxjvaSAsEOnqf81cAXGAOEWzQKEXyHZvfGCZ7+i0JO2CuXZut1HperMFMIr2O5ZGtvHhE5VDwqI59yj8eyU9JYmOmBKjk3+A2+kB6oBL9VM2R+B15BU2fX/m5AiZoL83CaUTMCaVbXCNyDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754671194; c=relaxed/simple;
	bh=9l3Lf8jxnIjS9d+z7gxs6VVB7ueiwav83bifZv0s8+8=;
	h=To:Subject:From:Message-Id:Date; b=O8UFlDguQYSD8WyVBk8Uw4prwH3BtnsowFEwraL9hPnTgG28LQAUL+zftV0CwBFj4OhBAvf6ZrbJRZwJovJasTZ1IH0e6jmzjCWDH7cS9uPghKejUvoQB1vgQSDZtI2Jxyp6najonneFDoSPgcS+PqckXMMxELdTFcNjm86UPSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1FDa53k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1FDa53k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08FAC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754671193;
	bh=9l3Lf8jxnIjS9d+z7gxs6VVB7ueiwav83bifZv0s8+8=;
	h=To:Subject:From:Date:From;
	b=Y1FDa53kTxhV+mEsAZqa8Nr7Yo9NP8VhSy9hW51f/A3KIpAdGOwsKAy8vaoD1SJgk
	 So1TTuKpl6xUpb8126+M9GmJ495fchadVtQGzRRY2S0cj/OaXp+wxRzQaoGdc7Yl8c
	 3r9QlOYn9fHM2dMOAPPp1qhGt6BzTvJeM138QD289hwdxFTBxGpsMwGZAWLCDi6xHd
	 7GsI2nXGFWxjAYaLrKKhiJAGDbRN5UNl7TaVw+aSw3dpdys1HKyXD3ejAbyM9s2VFV
	 eZobR+iJkqCiM4otAvOb90vpg9kGlNvwj8K5OL/KLzrLgJtmHz1el+yXcFZaSIZumN
	 XHmGjxxZ608dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B236CA0EC0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467119362.16322.7642914828575220899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00df1c2300a7fc1cfb0c0c3f006158ec019735c70f8be566813f719cb38d359
Date: Fri, 08 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754671193
