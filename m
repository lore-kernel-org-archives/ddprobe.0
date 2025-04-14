Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AE81F561D
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744669794; cv=none; b=GtfWqoHv4EdPItQxW3PjLIzsINm4UOltuhFzO0Mhsv4eY4TWH/2czx48L4JYRTDZEGq9+2xIxlShsh5c5CQHwqOKtpD41oBapeSSI8ttP6wZJcAXr6IxjaQxFFL9+87rYoW3xKNae4g/kI8vyB4ZGkjU8iCNyApoZXVDfpGupEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744669794; c=relaxed/simple;
	bh=YhzU29Q1mKSPrlmL7x6/Kx5S/rjfY//mHeq+ILR+IeU=;
	h=To:Subject:From:Message-Id:Date; b=jG07d8orgW0XTGxNHVABbG3pCHN8CLqXVxiHxuOCjTE6h+RklypWthkLzlKV3PCMfdEszC4yHwZ8WJYQwVfOuzXzumZtP/VMFhDj8cklF2wwQK7ZWnxPhA6qbpfaKW68NlfgYJyB6fTjQPtWtKsHbJ/t6s03GCXiYKHSAP0vKHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7fNz02i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7fNz02i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF592C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744669793;
	bh=YhzU29Q1mKSPrlmL7x6/Kx5S/rjfY//mHeq+ILR+IeU=;
	h=To:Subject:From:Date:From;
	b=o7fNz02iCGMromdddNX4X2iF0tg1Mw6tQLO9wOILA+Mwi8xmjkoA+E6vDZgcd5HOR
	 Q/fl5H+WT6oqGbkDNcwTmEMLxw8+l/UgnwiHxT0kKsJ6g9DPIBppME8Qg1YxNvD/xt
	 pX5s5CEQLsFeg1qlXDgn2pxIRxp5JJuHurjlXuWpBEsdpZ/Y3qHNi1Hwl3R1Aeh0GP
	 Ja28Kb4MqpSBePj3jHYSpbQ8hDUg8li0OUAOgLyAFLZXepUXQO00rW3IdTfjkc0DHc
	 8wDZ78qm5GOnYq7oeK7lyrFUfn62sAxf1cIwZ2oMwg+mrHYJZn1dqX8Nu3f4RYpq8d
	 MSSpFim+7YP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E236C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466979363.29114.5650313174441973894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29504a9faa0c92ef5420837753ddb557ddde0e71f1ce09bb0bdfa7347f11f39c
Date: Mon, 14 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744669793
