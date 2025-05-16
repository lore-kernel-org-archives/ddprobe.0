Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C6679CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747355994; cv=none; b=BK4EHAUmNec2grKLkQgQwpSCRQKS72cruLjit0Zu71oLOJdQ27MWy/KHJb3HlZF68CYmkBsSRexbThSveZphHbBsemHUQ+d9QyKN1MuvAr4YPsrcu02BLvc7AlnPwGOOrv9oBdEqRhpumyGQlc1ZS2mXt7zSshT5k38LyWv9hGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747355994; c=relaxed/simple;
	bh=nw9hLs00bytkqUdffseakXYPpVWNs6o+xf7USI6e0n0=;
	h=To:Subject:From:Message-Id:Date; b=qqAml5F6W+YPxa0R88aN9/kl0QzfUurJfLUvOGkMavjYxTTsLg3ZDd2Ki+F+XS7UzYIISJw/8PvgPsDyyWzSKESWpZpZg0zZklS6xMY/0tNOr2R5dKo6CjqrLc2vrBdo5N/fm15yvf6rV9C3X0YAcyHRw5QV6lle6m2wyLUQeyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqFgNt1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqFgNt1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A86C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747355993;
	bh=nw9hLs00bytkqUdffseakXYPpVWNs6o+xf7USI6e0n0=;
	h=To:Subject:From:Date:From;
	b=qqFgNt1Op+96LP4dss2vCf57RnKvzwcASN3i1U17OwgveQcNC/u3u3Bs6Z8xOERY+
	 Lw1y4k3UpBUvB163q7lo0EJ2dsKZiwKIwavzF49sVrNQpaJFVU+wH1v+nuyE0Zqs5W
	 2nag059ytbJ1Jjj/d2DF7ZhG7IwpAptbT5wvG1dgem2NxuTmt2WDz+isE8sxS1uKki
	 zgI5jQhwxTDOnXqvz6QcI9OP5QeQkCg+n4QJyCO373B3dcvw/NbcSqaLXLC9pKdy44
	 royg5boXpQxWUubO8Gvh6f78aazcYzaZ9K65iCNEWtuL0W+yb1wj2J6/zA9pYP/Uhj
	 /o/DmcL85pFwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB1EC2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735599357.27440.15586393778908277878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f6a5314d93928aaad2d5326c6a653f68c75a0b84f906ef7e70e1ace3528578
Date: Fri, 16 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747355993
