Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328DDEEB2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726628754; cv=none; b=R6mz5kCQyHa1HHciaLIQL6cnTGS8q+mCd4idLKqQPyS/CIvy8hAZ3H3Bf57eXuNe2ZtysaytYpdmKGmy8QuSkXFYR1jh+FZws9JUexBBA1YxD0sfqH6oS7pMA977Gmxf6BoPw7hMfO9NS77Pd77DuNfsFfMqRi64UrLVqrUzAho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726628754; c=relaxed/simple;
	bh=u37DoJlveriWbcIssX3Mf1nWYyM+ZUFFicyDSTqOxfw=;
	h=To:Subject:From:Message-Id:Date; b=SrSsjEsvTPUrEfOCl8mYARf64rzK3X5CZSxIpDk3Lb8TkXyogU7NL068KbyfkipniW2m3InssvWWc9npNvZHL+XRHcR4UEMt/fNFqW6mJbHj2NjR8H1ZnqQgYRc5eCSjvajnGaLxK1SUoY9kwco32yc8i5LgLRNAiq8+l1Ptku4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlpfRss9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlpfRss9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB1EC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726628753;
	bh=u37DoJlveriWbcIssX3Mf1nWYyM+ZUFFicyDSTqOxfw=;
	h=To:Subject:From:Date:From;
	b=VlpfRss98bQlfsi6ZKQrZugREW3Viwl3QSk8DYzuKg87m+pP8vEivHB3/ChJ89pcX
	 JP5a6YQ6MSOpCFCblrCbBwBwZvIba6Gzd1lPflq3RqERJu0TM2ZGC7dcn+mF6nRDLE
	 NRPZXyXLiY1vE91Y9sQieTZQr15mdthqcZ55eol580FICCwVWNTWn4WQ6OqdCGbyTI
	 mf93527CGtaE91pLzSPKNiQPViGOBqU26SBoefOeJ6kl3FZhVtIh8g/YF6b77o+Dwl
	 BVZBE80sI6h6HGjp9i7FVOO30Ajka1EhX054vSaiereARGm7NuVAodCh7HDztA2aNv
	 8gz6VJETL6PuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A389CAC5B2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172662875359.4196.13821393862544393000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486b14ab1cf3875e117247acba33509b006cd5b592c23cd157b110bb5ea56268
Date: Wed, 18 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726628753
