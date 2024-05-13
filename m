Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497B21CD3D
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 05:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715579543; cv=none; b=R5FuSRn0RyuEOwss6qMptpVnvUkrklq7H8B38F2UKUKU1Xe0NejWxYCFgbTuh+4DJuRRt9A/3Yj3p9ZO+cqhQm+zlgWrmIlw7sxDSfoS/hCf28k3ek42qG/0erz+kqf6/BgMoNLsVEFF34BG4ruhW0Za2M8ITHY9z8D9E8670j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715579543; c=relaxed/simple;
	bh=GEbr7+X4Fka3bp1NajJXaltcuA9MNQhJgTAOi4d/w+E=;
	h=To:Subject:From:Message-Id:Date; b=O1UtN04wMb0zd23gQ8fN4sWxCacvSf8zKppifvUdcH4FRc7H6FHpEjPg9qTIoyFZ0CP7c/9rbwUbYiNkLKL4mGXBTm2voU8w/aKkrdA7qTNHOlKsczzpxdT1p3lv/3jw8W4EdHt0qJd6HaQITCs+07AuuwK1PQnutQ9Av/Rlh30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLWiPSyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLWiPSyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0290C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715579542;
	bh=GEbr7+X4Fka3bp1NajJXaltcuA9MNQhJgTAOi4d/w+E=;
	h=To:Subject:From:Date:From;
	b=GLWiPSyZrguZ39ec9iE8avxEfVHLWvOZsw8+YkUTkUxXA8Kw9EyrVfe1peUPJrMLe
	 PQ3j9Lee6CzGbBCBR4+f2AaigZeOkJlA4f+vbWv+kYJsIAJ6l8/UYMqtzYJpI4tj72
	 7aXGWxaA7uGOlM40Y7UvRjQpfmXA6XWUYAbbBVQ+v5IWHDtgzn4vcO4Xdq0Tbib4fB
	 47ejYSeT+r3gLbLaIhQf5eHHHjvZyl5AkOU+GzKMsKIqnRa7+Bxt0xQ1YMftPazWmA
	 Eu7bbNHqGeFVBaMcNfpkmJ4+6e+TPkUCPgBO8UsieRno7j2S6e7g8hwYPmPC3tuO56
	 EKbVmgEVmB+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F91C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171557954276.21455.663383746353579684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39509037b01e887e2d557af4f2895e4add76618ee39a6107dc5277a907bb564a
Date: Mon, 13 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715579542
