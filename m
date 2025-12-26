Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249E1242D8B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766782434; cv=none; b=ucHteqcP8fRPWvsoYiJy+ZryaAg1c826d4Uv12GKK1G9bCG+JtInGnBjUiygWi0bLx6/x278HA/Rvvh7c8lm8MVlZINGTYsOlSbnngUBJMkIosZAXmyqFZ5MnMWmbfBNWOt13JytIhBJGfUBb0ULxWXZpZBJ5GTEszIHa/Bi2nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766782434; c=relaxed/simple;
	bh=15ucrzNwSWP6Z9w2p12hEe1OFPNo3/n2QY/nE62RWpE=;
	h=To:Subject:From:Message-Id:Date; b=VeZ/IqF3F+9J/2TcWkVxpbVQBWGuveqdoU8YXJXP3uAH/hNv8aiLsHEIXJNqS4Uy1YhoDPb81clEjRsQWfjiSYSq4S+bwroRDhmj9AN6T8nuivII6tntRH1rkDJeo70EesBUQtzELzeqjT2KcM+aZMjbqMCvWNH4bsb0+5ZyHIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSHTiJZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSHTiJZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5E0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766782433;
	bh=15ucrzNwSWP6Z9w2p12hEe1OFPNo3/n2QY/nE62RWpE=;
	h=To:Subject:From:Date:From;
	b=QSHTiJZeC24dOGhTX67qTd4CWyi6R5nmd+T/9ZBu7LljmxxuZIVKCbEQTpAU8ibh+
	 lV6Joww/Tff1boZz23x9JG2wtNIsgfyMI/2crMrPvBISNeEB4lxPfvVYLzZzE10qfS
	 /cVxZ2Z8WGR39XZAO2jCjjsinvjnziB0HFRcP+v+BsNQYDEaDqand/C66IdVHQQEej
	 u8rIDJIPt4tHoQTW+s6pBKcUjRS+NwAx/y8AQzTmlttfuJ3Yv52FLGF4pb7QVKQkcu
	 AK/WGCf1jyvavJKe7TKsdqyxJG2bwEcuq7J2b7VE8mYAiNBvKwaI857tv7/l/Dlr/g
	 6QWy8baxIn1OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A083E8FDB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678243359.20838.8339072776182728358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342c34359deaa2dd486f5cee877e5f84764f495118df42a80a946cc3bdc97486
Date: Fri, 26 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766782433
