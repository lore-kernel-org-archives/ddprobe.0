Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D60D31986D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764229974; cv=none; b=BocdLT9z4q2OwKNAE1xTCzcTOekirNEoR7tRqwwjDX7NB+KESDY9VwQ2Gnh0RbezUtNE5GU7hQxF+VlUrgblvlvaYaWS8YWviZL1mKlmz666VB6HnPEG9xZAmjmtBOH3YEYZ5pMQ2g22ywdc/KO/scPV3+rZeAP0M86WLAonmd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764229974; c=relaxed/simple;
	bh=sWzHpMyZm02Kvo+R2YHSpbBvROdT3fzhx9Np9yd4sUM=;
	h=To:Subject:From:Message-Id:Date; b=ZZrZVd8Lx8pMC0BFcJgV7KPxwwCQ0juHg/zeb65Nba8LXJa+dKQs7wyQboplWN2y/x0d912EdREEb7RGI1KXkPe+z6l+IEThNTH5ufSIANK5AqiS6FkgMCgW6VYKlBHUgoRZweJc38um2VameIXd51I5YRa16YelRCOfsnSsfsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWkVsVHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWkVsVHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93CFC113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764229973;
	bh=sWzHpMyZm02Kvo+R2YHSpbBvROdT3fzhx9Np9yd4sUM=;
	h=To:Subject:From:Date:From;
	b=jWkVsVHKlr//3olXNF+WjuFoNwlUqvVwNVkgTqX/QMOCvYntw2gmPAKyMJ/Nf8/Y2
	 hrOxh7Y+80eKXi0AMUM8yh4psVObM+5nEnXK+SNLtc+QtIutEU3qgo+DAfc1qAHtO7
	 d1q9rjT5LS1Bkih9Yay6m1bfvJiGiS1VZ0fpdvQK+PU/BUMLNX1FPO1mMStIcrBLdl
	 7sICzZxlNv8oyuS+eADlLcMECpJ3kXIndCzZmCWvNivE5XAz/pEvzAy+5f8h/eqhZw
	 WTakTMGrQwrzePx0KujQMrEooj5GBFc4JmbcJIahg2/AMYQeeGRSNcwt+gmNFpo2X+
	 dtNGaVm9mmwxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936EECFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422997359.28275.979565840842916544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a4bb33c482816fb937020fb41a1aedaedf55cf92d403a078c6693f8636db08
Date: Thu, 27 Nov 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764229973
