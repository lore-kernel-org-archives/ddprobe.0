Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258863B2A0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763317914; cv=none; b=Fg59cxUJleOSrNgTmpirvCwfD40wKJZe5QYifRNlZkPtf2bJVSgrc9+BJiFZD2xDJTfA/P2D/ezbCMJkuRp/aKB3gDQpD7icY+yXWzp2iO1Xap/rSp5bxLoH4v4MuR7U57oPUnPIQrSGTZ8TJF4g7FHFXRYWd/MEdooGd5LE5Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763317914; c=relaxed/simple;
	bh=PApk5R03u+/UD52J2xGb/8gv8CP/qZW0Az91MTzDRQY=;
	h=To:Subject:From:Message-Id:Date; b=XXe5DjV7TqKchc1W0kbtvg7S3DNPOoUNBbfA0wO6U1zKcXFI80G/ZvO0GcOnhfPBav14YdQmAmxO1qbqsuJtWZHa3wxnuEKGlfi8xgZH4e2HT/LDqJvcwRMKWBVnoNzBVlBFPOFl0iZ957lakbBeqDEryrZvuAcUxJjY21p7owo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCwkm2D5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCwkm2D5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F1C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763317913;
	bh=PApk5R03u+/UD52J2xGb/8gv8CP/qZW0Az91MTzDRQY=;
	h=To:Subject:From:Date:From;
	b=QCwkm2D5NqLXCnIBgXQ0a8hqnn2RpKSrgEYr034im1JtkrR6GtdC/j7UqC/kfKo2i
	 f1ElrQoX5Y3OZvCDKnL33Ro5mQZwfV/YbBVa6IT97wCo0GU+PZnZ65GD/f5UrtBM8u
	 9oJiNK2361mncjzfU0HL4P/DeZs3ejRMe/qeEM/6sbwPWrswfOeH9QpeUowBty94N7
	 hhADRenwuLOklU9MWh644QUUk68o6tn+B1wi8spa9WSajUWJI0RX23TO0yb5Fld0MJ
	 rJwrg2MZrI/egOHuvCHi3Fu2iVetshFajcQ40uEUjWM/NpVylOLgXSd3GzsGigt3d4
	 p4pgGIvrmqFYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B89CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331791358.31540.13393481350701936997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e090aa86c7b8f96ccb43e22b99e50c3231a9882760558abff85e2e66e75c008
Date: Sun, 16 Nov 2025 18:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763317913
