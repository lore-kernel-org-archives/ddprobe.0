Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293EE79D2
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747093794; cv=none; b=PzHjli4xfua1hPYLr/E0yr5cm61RpaYMhQY91HwZoqPuCSIzQ6Ndj1Ed2PkIReoAfy0QvV3Buya6K3KzKo7gzQD6RyZJQXhDBmb+/rhbBnibNcsNHj4+2XdMrZM7aeBQ1K6etqbqfqIJ9T9yxxEP8ByLvqKw5qImkw/3NLt5IaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747093794; c=relaxed/simple;
	bh=y3kUH42sD7gcB2w/olUGNJ7Bzhx3PzVcm4RXFHfW/+c=;
	h=To:Subject:From:Message-Id:Date; b=aiov6vMzV49Mg/qGVKzOx5o18Hf+pVuNXHe6HXtrwrmpyLyIUvO0S3m1ntEg1z9Q9TOw9J02fUIJa6qAteTeRhUhYvY9FaWuaYQWFBH3ZocXwOtvrZ8SazkEX7zABlnO+GlGrt8HBfLK7RD4NzOYvwn/AhbNnxO6wKG7U5eLQzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4hd9zvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4hd9zvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A133CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747093793;
	bh=y3kUH42sD7gcB2w/olUGNJ7Bzhx3PzVcm4RXFHfW/+c=;
	h=To:Subject:From:Date:From;
	b=s4hd9zvmjZ8tNGJJI5e6xXsjZ/yoCdIaYfC1y6bRFebhOalPG9zuDN2/RjABqbJpT
	 nux0OZCAKGbZ+fPIvOhJ+Ml/xCGaeePPeTvChTaMlXUBbDILmamu14p+RGsmyOvDKn
	 yywt58sLgOyG4/PImLCQ9cr9VIwDUU92V5vxuv/dZBsm7A3NOLCpo1/Ph3JN7pOdut
	 rZVR6Im+c2Yf52/iRO1rF8xZnQgg2AezNmBjDoNkSsMvA8CqiGcLvRbRwrwisgC424
	 XrdoRUmXO/DQpBYs7jDhfOae8Qq0KwrCWYRiArZ6pQwLgTOPB93ap+S+oDsrwl817k
	 OdDrtiiuD2Myg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931D3C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709379359.1037.17244063611770686164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde8ff62215e42ec7e2363fabd04a30952bd3efde3fcf53c9de7aa231ac9a601
Date: Mon, 12 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747093793
