Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8552D7DEB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759051795; cv=none; b=CL1sXW0g6JA+QJTUGaAnyGpQRpVnNGn11nQpYTy4JIDVfw7IGUl7e49mh86tAHoKivMX629P0I2ZVqmOvYSP4jxha7GyJ4k1q2mFHvbBnZtU9UkaOw4orO10tbMGC0qOxyM7RKjJWDOAb8BFQwWDQ1GcjfxXve1rNxQttFApjSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759051795; c=relaxed/simple;
	bh=Ip/8XaF3exjIxQu2KeFnHuM+y/Bc3LwaNvluxEJZJyM=;
	h=To:Subject:From:Message-Id:Date; b=rXvoU3gmmxfROZBcniIYoZhG3Yr1EZS1mpEfmqcHNGBsAWZC3jjVG3fSVHMYMi5ykrs4HTuLAoQXu7NEfNAeFTwSkR9CXIk1JOAhaCpLy1Q7PGWpxpNpwWXmLsAfaZWTWWR0jUoBvnf9yba4Kf5OVvJ3TcdjhVm7QNZDfry3mqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcbCd187; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcbCd187"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2511C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759051793;
	bh=Ip/8XaF3exjIxQu2KeFnHuM+y/Bc3LwaNvluxEJZJyM=;
	h=To:Subject:From:Date:From;
	b=KcbCd1873Z2NCNIZpE6KvyEv1qUhz6O5GYA6CkOKfKS4JESmDUnqU0XwPCPuXM8MY
	 Tt0GZYHttvQK56zX0Z/vybSsEJBIGY9zvbI3FwuQsp/QRa9/RE9dfjSvuWcTJG38mv
	 SAsoaw4Z9srI/+mRfdGxpD383fqwelD+Ip7c0vC2pyKfAGeQh3eC9wdU6WcJMLJpeh
	 pc0TYVsCaAXD1aRXXOLQkQabt6q2GhsU2PJI9rjIdPhgVAlGuBI4YSkCPTiQ/+QDrW
	 xar0LHDvuATWrK9NiasUFvnho5pUrmb/PkDhlklvXw6FM6Or2Ugc8Vr0UDkGYWs4FV
	 GKP8WH/xnI8iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF55CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905179358.24570.18222573093215095864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca9dd915dd78c2cf1341da52038cabebe73b181fb20b6181cb444fa646405f5
Date: Sun, 28 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759051793
