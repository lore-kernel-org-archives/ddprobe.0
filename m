Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBD74A1D
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748081994; cv=none; b=NwYR+eJcge2IL2T/2DwALKpK8YZZ8qaTBWrYysBeQ3SZPqHfOZge9jdS1fYhOIHPYKlOFwZbtV8pnyIFkzuqZHqcvcJVh20Xg5IRN6Bwcd1GF+hDK7rOYNRwyuhI5n4y9OhsFgmJAvsa+nUv0GW7SceLLg/c0xWwDkAWPkrAhgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748081994; c=relaxed/simple;
	bh=9zRyv7+y5+c83kAjHoq1+UEFZD7VeA2uwyTQ9p45dNM=;
	h=To:Subject:From:Message-Id:Date; b=exEPE8B4Am25aeI8UZYehoCv1qG+OPwfwtem8u3HNwFrvb1hczFEQoZy5nTeWzrQmMu/LrkEqxBOYpCrW3Su+0KMHVOZgk0cYgxIPQrndRFnW6x7Qa9zPqnJsQ+9d0WBd+u4GCVW7yjfYtx84csNn0/0rbzKkv2IeWjSvUnyKd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWSCSFel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWSCSFel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748081993;
	bh=9zRyv7+y5+c83kAjHoq1+UEFZD7VeA2uwyTQ9p45dNM=;
	h=To:Subject:From:Date:From;
	b=mWSCSFelJkCkOl+T628b/vY+ZTWpFq4su4eTRDCVjXkKPYh03RmQCuUZDe0MJxJGk
	 rbJv5Evj+4fyuh4YeaYQha5LvekjZrARv1GSg5s7yZuPbhUiS54zbv+phMNeb+P57K
	 a/cnunew0ucea1Ds8rO9aEOhCX5l8RtmiawUrif8ViIrIdOAcUnVrHXcc1WAtyEVFa
	 zzPtersrXNVwF4lzB3NjLoeSlFB3SeYlC2WBFe9qBGv1V7+XlpusrbDrk2UBiY0f/K
	 DraU8De3rUvoBMRrFrGFsSRXbomc9ogMrqe0vs4nNeH3Qo5CtZRDSqRxPOGaQmsNbB
	 5G0y1+oOk0uAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B8C54F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808199357.29677.8649577382405290431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35bd9b021cea5324c2877ec971eae7a0fbe80ec3ccced37fc8702ac5473ccfd
Date: Sat, 24 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748081993
