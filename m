Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 819CF29B78D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784477914; cv=none; b=DD41/WgtgU6vz+zZrjOblR6zUko1YgX2GmzNj6vft5yg5qEEAWGFxEkc4yYPIBFPAUg2kbt/ZvY824+3TFWUB3nOKj8esOhvAqY4NIjYnIllak3Q9v23YUwOp8uIhOVt43nXzRxa3mD0x6QlFxC0IrPeZIu71WjmG5qPiYYE9+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784477914; c=relaxed/simple;
	bh=8694U5j/DvnaKkCXANPq7hHNs4JpVlVgUPqPQkpGxdI=;
	h=To:Subject:From:Message-Id:Date; b=plB30bW75B5QsR6n1V1UbRyeZ4PNeNMddJ1glavY+yOdtG37ZWeHxyCzK/NPwm0D9b7rmlEu1r2iGJY8M+VDYal7orSjlPhTjPYRMcFBM4iZGikQwGfriLdJF1LUWZYg88uenmcvacXuo2F7qlL3QC9z428Gh7ZXybaywmH/B78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrCn1O6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrCn1O6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC33CC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784477913;
	bh=8694U5j/DvnaKkCXANPq7hHNs4JpVlVgUPqPQkpGxdI=;
	h=To:Subject:From:Date:From;
	b=SrCn1O6yFisuGfU7zsJAzww5L9ipicaAEw7AeW07gYQ11XL9E/iPjhR+3YTOqSRDi
	 WA6c9oBIWaPZrCGFvOPs6HD/ggPJbSwM3wEnFoTFWagf4E/cpoiu7XOYgJnyNjxHS6
	 2WB/R1PAzIdTSHU7+q6Q1eEMhSlQb7EEoV/UXpOpIXualSvEi7GEg4UtIwk8IYK5C7
	 tO+IZ6gjqy7MiDun0yUZQENQPaHrvREtKW93btl/IRY5FL+Ufoc6SrG5whvVquSyHr
	 sO3i3T+PwH2X2TUoxAn8F5S2H6vR/giRXnoGb8Uk3zun9Xn8D66PhRNbP2hzfibJ7O
	 h5hsYeyU1EsWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80E2C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447791368.26761.17314818538080752605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4f83cb35b1d787d564c6331c057e54399b8ca3e42715b6e4cfd6b31de92c71
Date: Sun, 19 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784477913
