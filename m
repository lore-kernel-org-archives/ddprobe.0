Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFE717BED0
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745390394; cv=none; b=BrbkXVj52dIFe/xKwsWA6OIGrM/oLOAFfitWz7phMKL/ggXdXWGD4vgxduM9fQWcd6xYbjEcEM43F2qgkFNCeiSYVXJaBYQ/Eq38W7bmYnKG20VnzlBkttZwMVUsTgDFmik+01S1mEu/InCBUKfa0AlcWjXw21pZ9WXvgZALCF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745390394; c=relaxed/simple;
	bh=zJv5NxegaRMw1eL89N6t56IAkHSPnw//9wCpCEW4LXo=;
	h=To:Subject:From:Message-Id:Date; b=XBfkKlS9YKb2QyezTP91HsDC9YHA0Frmm04zyoMNreByTMBcgH1XIxWSIDEu5IsZMaBkwwbznEwENAI1oz7mP1VhAVGw6wBYx0eSSNeryYY0wzS/UHBrU1oORbR9eUQqSaZSClqVrRRocl4KqLMPIo67QwOAKQlXn4/CLAW788c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwfRi/56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwfRi/56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4160C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745390393;
	bh=zJv5NxegaRMw1eL89N6t56IAkHSPnw//9wCpCEW4LXo=;
	h=To:Subject:From:Date:From;
	b=VwfRi/56JDKd5zlQoUSfUkCjZVbHoCVeDomNPAhFdKlnEZL8nm4s8oKJCypyvCRmt
	 Ik5kh6xSyeydo+7J4B0WOO54hBTRU0JZ5A/JN5hfWvwfeA3SvsUK/T8s5Z63mYo9kh
	 1ZB2SrWxzG24gLCbP5tUUMiazH9n5KdqqMVYUtlYu9pqpSbv+2GyKRNgEk5MYKe4NZ
	 dWbFn9dRwJ8kfWOLwwXeroCTiMMbyr1PgMmHWCeXaaRcvRq/sMf4BDhXJ1ySg3upun
	 s5NE8yc6jlPeV/I0ReFD6GX1iF4AVvdIRndWbJriv86O8CFk4zSkDhO1hPFfSLy+Kg
	 Q5L5z114imizA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C0C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539039357.22000.16099519613178733394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3a748e35bc7c334a2a7e7351b5471a9d34e29acc100806bae08b9602a85c57
Date: Wed, 23 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745390393
