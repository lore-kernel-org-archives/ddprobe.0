Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1C2199252
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761620394; cv=none; b=tk3xvvyE9JHwm+8Bc2PufSBxxe6fJNeHuLmDBKR+qJi/20xGKgysm78pFQsnvKrNi0kQlBDGdh6DHa7f+udFnbMhsIcex0cNOgBx4CWH7ij/APglF8/pyUXwkLNmUTY0XTalyPu2+7tg83Bwq/8iLPdOyovQgACbLKjB0EfvTRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761620394; c=relaxed/simple;
	bh=VNZGAkUIfjTB+LE3IHIiMDReFTdVvntkHG90rwxVBwY=;
	h=To:Subject:From:Message-Id:Date; b=XcdnpRFWti6DV3S8PfREyFrxVjhEUZTL+s2ig/RDMJGNLicrGUeyGOGPiEwDqYJbP0tOKd47Zx+pCVEd0cYPgBDdcGMr3C7qT1TJ635kOI8+LUqM42c/KQgBi0+42pPKkkVYHbW2/og9b6i3lyRZJu3SnLW3m62jFFNC/3EyW8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXyGaKTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXyGaKTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35A9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761620393;
	bh=VNZGAkUIfjTB+LE3IHIiMDReFTdVvntkHG90rwxVBwY=;
	h=To:Subject:From:Date:From;
	b=eXyGaKTLu0SrOAThvvNMTNoi+4Q4HQwUS0zxCSozsKc0yBfFoeKU2+9b5zoN3BXrK
	 GSm9kxAw2d43tmXFzAz4FLgcGLT4PY1ORXUf4B9CEeS4tezKBC1IKSDa5M7CZYgePe
	 uwIIT+9JEtzIdK2DyNeh3qLhF+YVjUhGx7qfMdSv6Qt295t05VH5Rb/MPFg3ntCJPD
	 9NiOUwaeHK1eUST3lG/wRobqnuXhMDxHe+vPy6yqnbjMWoDzqIdsjDQFSN7AOp/i8y
	 fllv1i7SF2cBeXFAGVm8RC9KTRRSchbcusafhkA+siJQBEX3oNnQ51jKePCyzA66zd
	 wcCAUgscotIuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F939CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162039358.13143.15879058096517246934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37095f20a735be8878427d702d66e06037f2cf5d6e9ddfe958746380288875fe
Date: Tue, 28 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761620393
