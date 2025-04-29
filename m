Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA27270551
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745897394; cv=none; b=c1Tonu/Gt2NV/4nhL6SzJk89CdrLkDtSP58DGpzxiFBD+4Dc7OTCo+zd4V2t/c5KXIryMFlNFaHoebTBW9M0xJP4kjd72wh/7r6cYLWJTzX8l2stSo65yPa2F7/6KGA1I7GJG/Ud8Vu6seLFO7fcNxSLBSe2qGXPKH5m7pyFJ84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745897394; c=relaxed/simple;
	bh=r9IO8B6aDo3CrGQ0bEea5A7UfdAQZ5fQaEZHB8SDPB4=;
	h=To:Subject:From:Message-Id:Date; b=DNWgN8eVhqWTrnM7Nv2oS4zq3xa0y+495uUbhXrXTjR0bYHKoqitp7axav+rpJ1akGqVijCh/Vc8eqlbL/TcTDcyqptF2zrvFY7NROBjNwSbbtc/0OsSBxfMTGKDF7Sjk1jrrV9Y3+0OHZx0d9VO1ZWK2WriU51dHVJWMYMdsjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZ+FzGog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZ+FzGog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF635C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745897393;
	bh=r9IO8B6aDo3CrGQ0bEea5A7UfdAQZ5fQaEZHB8SDPB4=;
	h=To:Subject:From:Date:From;
	b=oZ+FzGoggG3q+7+Lj3mCg94KJuS4IAhXxokQ9z1LY7pvdsw6YNV8bWMj33qESgI6w
	 icOd6k+i7apA51cMbp5+fepyMT+BRU7eedDbbJjerOAO/z7OkWy/tBLl72uXsXFpQq
	 am85Cd85Llhfup4W4xmzsbGxEYNljuNjMHVVCr5+a9D93L+WSZE78wYakYemcbfc4r
	 5Bse1C7Qgtgqhpy34aZsQ83xsYdUyFTBCUOgr+MHoXjOP5NXWoH/kgTaWLNCO7iHdC
	 uezLU6uplZa0rwtw7RfMnTxjuYuGR3NUtxypWx+f1j7J+NksvKTHSuFKncvAJnTFc8
	 1Zmf0kiQAZZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E685C369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589739363.3321.2469092823199945138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b3265d65917129e9a0f915abd330294b7706b941f91608c3fd91a35e2adab5
Date: Tue, 29 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745897393
