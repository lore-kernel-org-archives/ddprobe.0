Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B862750FB
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748637594; cv=none; b=AXAT4sWXTXBToNwZTUvB0QMnGisIwVvs1+BDXfHUkKwxiateRVG9BABP/fSXwaDeN84o++0WbX4YjIkNplqVA3lIYGp+95Jl8Fjv+LeA+/EysdgQntLTd6vLDfXmnI2CloKuRAvpbKLJo2NO7y3Sgm5ooqHC2AbRwP3qucTSHn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748637594; c=relaxed/simple;
	bh=pmbzYSaYdlBd/PiJWa8++vsMMmqr6EdYUUHAj3KYXQk=;
	h=To:Subject:From:Message-Id:Date; b=m0vhp5o/M3qiBvh9zl2PCEBuFW1YmwXGORLJdLVsJ9O2eyOCAprmWok1QOES9sQo/LjjL6b4jYzmkZ0JqE0hjHlxHpwoqAZSQQ7/t0EZjqSQykU0DSYu9hn3QhZJpAQJ44W3hR2jYqv3R2bLz3ODTNo8y0iEJ9ShnLwktuC4hqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFCAmqUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFCAmqUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCF2C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748637593;
	bh=pmbzYSaYdlBd/PiJWa8++vsMMmqr6EdYUUHAj3KYXQk=;
	h=To:Subject:From:Date:From;
	b=YFCAmqUFP9HZViCPJ3FdXQO67XYJYkJgGV48KuBVoGdnXPW3qGt7T0uPJYxXXo8I9
	 a86+TjMdJCPFzTgy7h69qEmHlGsvpFkqSmXZxpq8i4Og7SKJt+KHV8Gb4+rpthX86F
	 hhoZNSJ0+DnvyTP8kq5RMFQl3TLIFr+WT4a183FiHKTnwNaMQhRhMezCv5Od/sU7Ly
	 Katxuia5sXSF+CgT6Mo+sytTUiybzrS1ss9W3fH8BLaD3hC3DbV7RHNwP7GSdpe2CY
	 mrFWuuk2E/91vihlip/TZ/6sVS2jN1W/2V3m9GxMcp6J5lhcLNBzo3iEJoSpIgkNQT
	 2YmOo39jn2odg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9800BC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863759361.21047.13441965292789124759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf25453a9c564dedd3d25b5f8ab9428edacc04c329feb6559cff49644dee407
Date: Fri, 30 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748637593
