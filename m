Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496042627E9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746766795; cv=none; b=ShMm3UaLl8HmrbAxFNJFYIySaPKQRhuCaGxjb4bMsBVOpbzoJWFGAEha4YeUWSGRejyfcFl+/6IdrUK9smyVL5mJKVxEte6VgB/B390utTRrDfY94tkuUd65O+tuLWtZmqCRTJhV2YtuyycmuEAVj2NrXjPiwRKxWx4xATcN9D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746766795; c=relaxed/simple;
	bh=SRYpf8jmX3b5ZlK5M1wEDXtX6T9eKAK+p9kDscmR6QI=;
	h=To:Subject:From:Message-Id:Date; b=N3BDWPJ1fdZpFI4VI3J22jOSxwvIMxtAQrKOOUtVtQqL7LSLZ2DahaQ44N7OR45J7DyweS+/KrsFNpwhazvQqctOZPzWeUEZTGDkgAE4Mb+1Ns+k3oj8ZFlD63TPLeQ6g0RkD7TgoEXBf+EQV+FJIPwFIbkvBJ+Q1trVwJbcVfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDsjpCLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDsjpCLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CD3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746766793;
	bh=SRYpf8jmX3b5ZlK5M1wEDXtX6T9eKAK+p9kDscmR6QI=;
	h=To:Subject:From:Date:From;
	b=eDsjpCLlJm9wYnb0WWQrsVa/RKxJBHTHkAwKQBvRvXVnurhgXr3Hv+co2wPCEu+XU
	 uM+1211HToq5qtieovHNKbbmFQdrxp9iS9OG7MnujVZoH73YZJUfkRBPADQOEXAAs+
	 AoiLpAuTTPBFolf8ZNRjZGjI4fKGYyZqhXv+tpXUGNT+oiAVMFC0lMf6PUSFXpxWQ9
	 hBogUOZMjP/n0mnlXW6Al3DOoazhz5E6vB/+NyBVBJm3ozHkLaOk3O/RZCgB2FIo3w
	 G9zdyWc+O2pLXo/i9w4XVG8FHBio3lQwgkT2WAvvYAWETpJ2jn0133aIH+qoK9R+z5
	 rQxHC43jB2/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B48C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676679358.25710.6130756992216217432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd0cd8893828d3f974acf724c0e443d5ffff4705fc0a863e10467e3be87fbcc
Date: Fri, 09 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746766793
