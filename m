Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BADC13959F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714105943; cv=none; b=oJxvDRqOrpMUBbn1sbd00yx9Nu6hXHYprMBUhrfCs0wL2GLgUGvjqnDYIoBVMWloAf3/JucZy7I7NbaL0T4qB4B4iTuLxBs7iKIFt+Z+sACyLby+BwpgBq7qyUiH4Ou2EodGB64taqDmpGtzweu5ZjWwpn/K6tISqLSfgp/Bz8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714105943; c=relaxed/simple;
	bh=dahQcUMwMV1BUhGWnii2LK/xc/nJv4Bm+/DtBIzUFls=;
	h=To:Subject:From:Message-Id:Date; b=KOV7FZC1trJZ5iw7QIwPP01bpiPHzPwf01SNUdbSSxXqmiJs6J1e91O3kR2l5FjwrdeS9+qtG0eSpMFIvNedCqn+UBQ9cVXZRT40+MSLJ7VKe9KQvbJLXn1J0ai6HkwTMbUMeh1ac479VOrTUdJ6OuQ/5d3A0RvBDGWgk/pY1pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJ0MUuwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ0MUuwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E70F6C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714105942;
	bh=dahQcUMwMV1BUhGWnii2LK/xc/nJv4Bm+/DtBIzUFls=;
	h=To:Subject:From:Date:From;
	b=uJ0MUuwYEpmkJlRTR/pY6qD+Lczouis/KgW7IqoZFP4NFUSS98UWTdVo9K6ta2obd
	 180Tr4jDqRu1jZLvEuHuvz2EqhE097TzJWX5+HiWA0a1inFzhWO4dZzks8/uJGYbqU
	 gcb3OahrqoIwYfTAq8hpG4z+Cr1rRu0I9kLjUccojeL7aBT2ugplP9VE+5/vrE4ZEb
	 97eoubzHLI/Aqr22Osnj1jt9WrVYdxWdDf3mVMk4AeYtib/zIOxeNDALg+bA5KueZM
	 HRWkKqO5KnnMHz6T8Nwak+bkkyAUFdPsZTajQk5M1fGepBo6wA15T5C5LkdNoJKh28
	 8NYF6V2I6wZaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA85C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171410594280.21091.12453246362323106432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24129f4e54ede0606ff2748b355700047559c52ed30210474d3af5003dbb60aa
Date: Fri, 26 Apr 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714105942
