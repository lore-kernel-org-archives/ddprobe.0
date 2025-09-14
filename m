Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8E6202F71
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757888394; cv=none; b=qotdMbmlto6OlLdtNjY3YNBHAGblydkJe2fZBxNdAxecnjzBVjQVUk85U2c7ywHj3znSsFh2HB1+11z3jispaU8b0OofXzOiGdT2S1OLCqobECZjzAfrkwPezQpylrlVQKYU/VurOD3/xdme1zhkTfy9dX3/0aJkgbZWjXMgIP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757888394; c=relaxed/simple;
	bh=8HbZxCVouUAGtl9WphEkPAtD3wJ6XdQeNxJ93zM3fsk=;
	h=To:Subject:From:Message-Id:Date; b=GM5gI0Gv7ax9X1WWj2nkcSgvlcxkzR9MpK4O6/K+eth0jtCUTSGXf20BSmdmn2IJ1n4Kej6N/4CYOu40LgeaoO+jC4J7bR4VFUz+4KO+8XI0vyxaP2JvH9jKy6JUk/zc5wdBRlYlxEr21bbJmY9GhyrLKi7ThvzG9XT0ElQfPtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sU4oUD7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sU4oUD7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FDEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757888393;
	bh=8HbZxCVouUAGtl9WphEkPAtD3wJ6XdQeNxJ93zM3fsk=;
	h=To:Subject:From:Date:From;
	b=sU4oUD7hX1v/gjNBet0H6OtwZ/NSjPxvlH6NB/Z0DI1bRgkBhEOSPbLO929rKXl5I
	 BkoD52APkIGjQCOoP7ZwPPkcQYehNYnFkDy8pK6j7dzq07zC4GObiQ3XKj0KszCfmn
	 6HZSu8F6N9IZo6htkGka0k9ziOJDGhbnCTRQd9U/fZ/l4HpGU8Yqbef5od0k4YgQyV
	 Q+H6MIjm6IVRXM/pD/P3KL2iSQ5SV06UwzmZ5VuN5f/TvU2wzUt5MhiKs0MXM+rt6M
	 WUcZbudze69huo/OYjONA2QVbaiodtUqgN6M+VbNx+lvScXR9P0CUp9eRv+OlzcYTq
	 0zjCSFdh218GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92820CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788839358.28896.302592830853104252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecbe953930de4d39159ddff5cafbc0626637c16ab09695795c4e4a9f5b32665c
Date: Sun, 14 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757888393
