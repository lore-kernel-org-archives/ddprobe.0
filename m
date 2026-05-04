Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077033E3DB5
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777914454; cv=none; b=bhgwga/0ykl3WT1kn7UzoePKUr8GqZ81UsSCy3iH4YXzE2EngkkBgrMlLVHT7f1siwzLhu55eJeMPLqbq5OU3kl4tQHYQPAwqBI3O5NfW/Xotsc5ZOgub6UbvOth0kiWbHmRL6yCbxCKRfhsO/jFnhAEXB34fg/YnV7kV9jtgQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777914454; c=relaxed/simple;
	bh=Y4WZH4HfV4YIyOO/xCEly7M5UjekWVeuNHGhDGO3S/Q=;
	h=To:Subject:From:Message-Id:Date; b=RDX/ddxhrkQCqLKX4rQNJBVWdL8zgGg2l3YDf+kBjIAFGoNzYi6tq8VcZX15TxxKymP9kQXLVOEXG6iCUsGR0A3zOomg3UBJifxLFmfRdgitHvcZB0aalMnkCWnyH3tfQ9QrPzoVXpn2PMIEvt+iQfdcA6uGr6A1pziLruhnPMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrIZ/sld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrIZ/sld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8651C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777914453;
	bh=Y4WZH4HfV4YIyOO/xCEly7M5UjekWVeuNHGhDGO3S/Q=;
	h=To:Subject:From:Date:From;
	b=KrIZ/sldmiilp1OGTDNv2G1UNBs0mVy1cja4VdMDczuYWOVg1oGlwBUFYK8vArr1d
	 2MsQXvl44E6S6i9QoVYBaRYxcheILXtDCjzAG2WPB5oZbPFEOJUkAJ7LBOcdVLBpy1
	 GUPOqdes9MEFuBINdbJSbDhXZ9e3je6SyrGJcedzPWU3ycPIx4UvhY065Bh7Hsy42l
	 vv2QV6aiF2N8I+tVyxP3dJyBvxyigON3Mb73fvk15Ww24dQdHTUs3/Aak0gEUOJ88j
	 g/vLZMVciPGHmZ9XK9cSrDQrcJy51y7qpqhOCKNMJ3WujRE6q0QIL/AmhIi4A8C0Eq
	 5lttf+M2MiN5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9989CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791445368.31782.10754445003457392632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40672446932653554a74f069444c4f1372e6df0e4b904a1340f837bd7565b693
Date: Mon, 04 May 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777914453
