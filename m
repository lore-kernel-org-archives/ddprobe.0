Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB29128C005
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751296193; cv=none; b=qFtx1huSPwUwSzPiZp8lu8HlAUE+rM4XJbLNynrrs0DCw50lADIpF5Ikg1pbKKWYb4o5pOBsF1wTYvQvHcVzAW/Kd3kDS3ziVwfIKHX/3/X+DWiElfJzgZAUQpIgHXT5UouYzqNbeuxL8WZ2QBmVw0qDh0pJ7PF59F2rjOqGv4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751296193; c=relaxed/simple;
	bh=k+RoHCoHiOXqcH1kOy2FVo77xV5T1CeqYb+u0SnkYMM=;
	h=To:Subject:From:Message-Id:Date; b=OnUK8QV1pCs6UxPueCjcM+qNcgDQL2PvqSJVJZEmPDPpHI1GoT1jiaA76y0A8iPmeaEy00WY6lX4Vbwtm7p7bPDqDrspl1mEYdUaBa98o5KISIwPn4syjuhvxPLp5WxrXyVONy1xJsrISaVUxShLDkPyNiIhwKncsS3CTpv04iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wc0q9gIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wc0q9gIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCC8C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751296193;
	bh=k+RoHCoHiOXqcH1kOy2FVo77xV5T1CeqYb+u0SnkYMM=;
	h=To:Subject:From:Date:From;
	b=Wc0q9gIVDywjn9vJbSmBrpUiSy7/hBBBke+yo1+eq8bYX6e6jR8b3763DKY557e6Y
	 kI4s4dokklhG2P8/SMWixmzxT0ltSpjSFkpIa4QFbJj+8OK6MnYeR/8TZ9Bu9NALh6
	 EDBRKNdoMgCEn/1inp4YCYiUj0FhKP1Q7hENUpytqq4dFstCJGWwIdeiCYqfHWNTrf
	 royCMWAkfeW58y8v0tjyGi+44DSALFMks7fQnFG2DjFI9f0j9NY8dmvvh/Ijak+Z3R
	 5W4oKvJBxRGuZVe8w0FpcYtuGsUrBf8gy02XVZn2nshe99aZ4TShHENPdDFi/MmnUE
	 V+BwKkKWVx3eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA2C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129619358.6577.5480408446338463627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cceb5577d81faed3aac2ab320c7cfbc254769d71a784d42761291eb9a97fdca
Date: Mon, 30 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751296193
