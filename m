Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FCB322B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749947994; cv=none; b=g0Gs+ycA1F76OOLvEVfWYiVkdsMq9ZT8WIUJKWG8YI6qAtSLRDwz7tFCKulYbLuXZ5bK8s1SlnFwD30ZkAMxlGRD4HUU/YR6TBI52Iog8T50EHxZYzG/FyiAN88Q5hioDZ76Med3SsYdOg0QqhAW46r6iRrjtxtSZIJZ1pJWWXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749947994; c=relaxed/simple;
	bh=OgScByAETtScOoaQ562Cw0NszgOIrejl4y34E2S5Bb8=;
	h=To:Subject:From:Message-Id:Date; b=ptoPJOhSP5dDoI8Jl5FdeE5X5xf4XwmqAFxA5r2eV12rHwH5+P4xhO99az0JvNwhQJG8W7R+QtD/tYY1yDUQn1q7hpE5ojpS1E5igoPc0FPG+cj6ZZODa3tfW7BYDVWGvmFfpD/otpJgmw/Y96Zp6o1i6uBSyQd+eqNshC1mues=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6kfy8Ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6kfy8Ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C3DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749947993;
	bh=OgScByAETtScOoaQ562Cw0NszgOIrejl4y34E2S5Bb8=;
	h=To:Subject:From:Date:From;
	b=a6kfy8EkXXMr6Gb61n1ypjWc9Q6e1OinRLvuWEe1Er07c6cm7WGw0AE+vEnvnP2B4
	 VV18Hs536ky8zewkfznApk6ONgIXq3teODMMEnZFEzZQhH4AQxlbruEbw5TsMP8pZG
	 5kWpYkFsES78iLxwDrdRukSPwi1OFTHCWegmdD7YnmqTSpq3OwaZHPE6WGFwzqCYww
	 /9TseSeQVXtWAa9lLxtoQPHckNrUeRfmEuks6skfqTNlXY7haGrn6P2wrCz0u5/w6x
	 7WKcrKGGmgZdjlyWcrEC1G6RFOy5Q7EVnZ6liNb15pbUUrGl3W+PzBmyMaEyUuwfGG
	 4RkTVgXWzeVmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E3C7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994799358.6586.14378054363054867248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414ebc4bdb84a4b4e030fccce0be3084757ca41fe6aad504a38b0db9feb6cfc3
Date: Sun, 15 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749947993
