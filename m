Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E26438B
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753766394; cv=none; b=qk6j0MkPvKoJojbWRM1jIDXEYSXqBkBHmvSPd0RjYmIke5GJVlcIp7oawNhGr9NaWZa2R7S1RibWHeWlqLXeQupYQwmU/rj9CWM/aREpvM2q+ZZX5hGaQ1+TgvbZVXuKyqje8YCb6yYg7pGSE2PmlYIB5fvx1rP9+JZ2CBav3Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753766394; c=relaxed/simple;
	bh=8zFizVQDf/Oio41dGLKaeehRFuUD5+boy5OQ/Uir2ok=;
	h=To:Subject:From:Message-Id:Date; b=P1n6DW/3AY4lOpiUotIWqdRxLN8AtqKAjR8oOJLpozf6AkhkpNI8dEgp3mz3JH4mSZXhcTzjvQZOrRL+bf3j5rpKAWwg5hm03LXPnW5InGtoCK6pGOjeyepPiXw/Hg1mN7/kb9nIdDIg7alLMHKjt4uvDCQUmlbGmMO7HXg6tmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bl3y3kBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bl3y3kBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0205C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753766393;
	bh=8zFizVQDf/Oio41dGLKaeehRFuUD5+boy5OQ/Uir2ok=;
	h=To:Subject:From:Date:From;
	b=Bl3y3kBUJSipOqX4QFuGIF5R0vMxcEk3loauwKAFxEfQ0SxZR9EzbQLwa1sQ9JcT7
	 PabIB/5c+1DbYC3QohfCRlQiSRaOlgJ1Aq9BdOYDaJUJn0ftCVb3bNW/77gbUad9HK
	 BO5mgqbSZ4e+Cv0qj3GFWq/aX/5SAGyEiPKJIhzUUx75wmlAShfDHMKMholG6McbiE
	 Myfn+rAT5ei8DeqTN/5f7dBidaWE8vrzGAEr2TpC3X4wjlzsZ0Z2AWdoieYy1F3mSl
	 NyUEz2fcJ2dyBciKD4VI07NTECZi8AQwIJjTGtcAdpTbZwj5kCmLgUw82NvqnGMTSc
	 N0o7Y51czXNmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91385C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376639357.4466.16252681625314073404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0288fabeaf08e314746a6c3c98702993da325382c0555901434f2124bd66fa
Date: Tue, 29 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753766393
