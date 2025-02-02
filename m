Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3AC380
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738468554; cv=none; b=HrQGY3aDPSCzVifV7TwTYhvs4Dt0Xb8GE5TZJFmtkWhpQ3nLUuZBHbln+HL4lkS/kuouesxVFKOj0vD0r5+FyRpXlkkyyaG01fxnR230gl6cznnnuNJjUcNJHPCA17qkyJppdYa/dQoYJJRGSavrGDUdMd8wgdxikCoa/LLj1dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738468554; c=relaxed/simple;
	bh=8PsGerWLBOkl/6XD+6z0P8cXCY1/rApoGMt1fZnWF78=;
	h=To:Subject:From:Message-Id:Date; b=HWozCzeT2jDsXCrZLx9R9gXYCxYjtVgyrzNKOfbUGdTlPhYliXQxUq2sn7qrtRhKC6UrQmOnSoMubd0pDS735icaNrNSypFTsAZbYCaODl4YZoukAi2E2I7jwGF4iD+k0ZwzoRsOcQ7Fu+eyg/nMw1rl/70CQFitdLB/5g+5AoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/FC6sND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/FC6sND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFC0C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738468553;
	bh=8PsGerWLBOkl/6XD+6z0P8cXCY1/rApoGMt1fZnWF78=;
	h=To:Subject:From:Date:From;
	b=B/FC6sNDzQbQY+RJkTtDFZrBrdguwlEC/9Ig+GwEBP7WAmemz9lUQZiAmuW9HyS10
	 DLIZFvCURwHpYWZ3v0rvrB2dCOuODs54b79Rxur0f+b9S4QazSJNL++6T3hEuaY60m
	 7BLiSl+3wNqIjSOfuensSloI7HU6cYrzVIhr1p8unNiuA6F0BrU8D1/nXD4hoxa7BB
	 DKrCRrDxraW5blDCI6E9YffWuR2bO4EN04Q6hlr0+kezzBTG+Tn9s7V1Vw9djw+b23
	 Fr6iyBQrubxPpu67AW1d5PWNoLVmNp0Ew1K0DHfvUjsqaTQvkCXbEFILoSdVUgne4r
	 K/f9aWsCxbk3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36A4C02192
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173846855361.8014.3540239577148978455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b86fcc97f099e5835bb51a87a3693750381a351a71cb98c63a73f73ed3f6161
Date: Sun, 02 Feb 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738468553
