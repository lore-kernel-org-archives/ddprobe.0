Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C5E3803D2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781739394; cv=none; b=l6R4rTa2wf6kY/qUcP5vUqEHL0GDIuqeqVQCyIhZKRZx2BMRLgXFNsAebAExCuBZTFtFWQpNkX7lMbZkZz/piL3+jVzGyd/NU39G1VO2i2sPyGQordGTh7bjgsXVabj5mtTNquIv6++UuNmGq7J4afH+Ggr8Fg/y2g/50Y+n7yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781739394; c=relaxed/simple;
	bh=xjzqDKGPdzAlWGa/YBCRlPjzOIBEX3/wMFw7bSRrgN0=;
	h=To:Subject:From:Message-Id:Date; b=hJfVJR4Rb40/o45jljy8GDf0DWlW/oH4CSlALBH2NZPiZt0FNnpaQ8AKit1LZA1SALPTY+Z8eLXLSrR4+muApjP298ESRkrw2f0o967tCKE74fINsJO+jHwk8B06OtMLsNSt3eN1PYqbKLfl8T2vWnQqKEKbQzZ8g9vw/ZS1sAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfF6dUXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfF6dUXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6CCC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781739393;
	bh=xjzqDKGPdzAlWGa/YBCRlPjzOIBEX3/wMFw7bSRrgN0=;
	h=To:Subject:From:Date:From;
	b=GfF6dUXgVWYoK6BmM0noy7rjB9DciBhQ7EiAge66DUzv4EjFSJo37lMIkf7dG3wvj
	 i3J4e2Xl8wvC7OKLGL500w92dIkIqjpqiv6yxWJqsBDgwwZRk62Vx/fJj65W/J++n1
	 el3yPvb5HCJvS0s0n2UKv+WETqMLvAZcwFgdihU49I+kXnrmCZdaUCatBuPMiqTHNY
	 UXlJeKewVM0r2mo2Gl5xMCPFx4Dv4uCFPMIDaCiUmhGJ9ipxxKrFchUVq8PnjoZUBT
	 29kZJW9okJXinIPNNR3t85lzOtGGsQZ6EmU4Y5/8rg45zszzUIEGSHMip9yeU+vAtW
	 IPg/QVjor9YKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC383CD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173939369.9626.2130842771316545882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6444d94163d37bee2d92c3a24afaefe5f3562ea51a2dad409019abc5906d3b83
Date: Wed, 17 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781739393
