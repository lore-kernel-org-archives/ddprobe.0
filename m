Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5EF33D544
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754330394; cv=none; b=IGNDNaqTaENWlHlcA32Xyqch4IDSdrAHStHAvOM2v6vJMPEr6p7cEygjAkt35EUcuFmEyTPTt4Hq/iMrwGQ1Z3MzAJpFz5BUy3ZHtiTWqfhcbof7DiY0pPn+FqEroSdff6Wx6c854m8J3tAnecnVyuMvbdJMc5FK/O6wpEEQxhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754330394; c=relaxed/simple;
	bh=cYa5/tWeM3dLmTlAFx4CFlKILDMJF63w9CX6Tkweh84=;
	h=To:Subject:From:Message-Id:Date; b=TiIRTjGCYKraqDUpR160ixNcNi/6T5q3OFQEM1bIXeSTHAHOs8ldtBpJGY9mSR9c7aluTFFSViI8szAPflOPxPLqVOY0QIzX6LVNoOM5xAs3+vtvUrccqdtKE99mPI2YgEJDnhtIK1i75Tw/XrVMYluoZVR+nWQ9LUT0esl8NXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKqOELZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKqOELZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D6EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754330393;
	bh=cYa5/tWeM3dLmTlAFx4CFlKILDMJF63w9CX6Tkweh84=;
	h=To:Subject:From:Date:From;
	b=CKqOELZp+odcbnv9nLcQf7Jk08QbcyciQNwXWdzsdw7rwcTUToDOe63C6nWzARYaY
	 CotkgGCOVSirreD8PA4nU9CTO4g7tkUnaEPall0sRffJwZC8qVKS0SzJryDOeBbsUl
	 olXZgBVKUmWPlUwRs8CjANmENpfrl9/cl8+kHzwGCzzfe01PeJKz+QfCxrUrWh2aQH
	 MIfp/7QmOMAkGpEHjKVL1vZvd7LXpE8llHZKL+HyBq8ul+1gzMSWQ8Xt29rJR+RWOh
	 j8g1tB/EyMffYiM9118ybd5R77UXG17VhfkgTg119NRXDn5pcnSocgGcJAr3vOHKRY
	 LYpGPQRNABfBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF6C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433039357.928.10920189116283330805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b60a439d800ca95ab9250c3fbee54c89c1e00945edf68c1bc0d4a9bb0b098a
Date: Mon, 04 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754330393
