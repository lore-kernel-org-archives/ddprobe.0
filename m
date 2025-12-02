Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC1054774
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764688374; cv=none; b=Brso1xWGStLwGf+AX8ghchc/ShecW1XocjfZt1dTN1nlDK+O36UlYpPnSwFk+m0UeUENdYqwcE7QF4vISlSFktWogS2KSuZ7fbM4MDh5COlM6qxe//BpMJrdb5lm5cexGXTHiNeCUEUVlymkPH9yGTwYIwU/GsMzZgYucinGFLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764688374; c=relaxed/simple;
	bh=LchhEs8xQRUQOAk57roU2ic7poA/O88KOWN/dXUwXbA=;
	h=To:Subject:From:Message-Id:Date; b=XAhDcVEVsKDEcIumHx7vFnNScBVrF9aCigKsReSZh7Ped9+Og4gXPaUZYsRp4i0p0Q4jBQtxrHLfsY9kj+IVIxPya2VV+GnLGcnZA5hqXWYKCYopgtdfg/5xNnRQi6pF1fePTrFUe3VXNtbk5DqbFdlqLt9EAioUA9fLegu/npQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDqTLlwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDqTLlwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA98C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764688373;
	bh=LchhEs8xQRUQOAk57roU2ic7poA/O88KOWN/dXUwXbA=;
	h=To:Subject:From:Date:From;
	b=YDqTLlwz804iyrX48sPXgFg+Wo7rDfKLqTK3sWAHZphDgFfOpUZ40VBV771XRlVHZ
	 gz2x/rGCoiYrBTWI4BZDfa9qkqjYVGkhqFQgmz+vn/3UVgoBgvWPXIrn+avYTA3sw0
	 j34o1UbZzFdqIhLAzhZdWgplbMxOScuYVikozXwP4ZzYby5M69PEjZN6gQj6jtmXCl
	 K5Mq7sw282X2pgeqjS4/vYT3Qy5uC3MGSrzLyDnMBy6NPjMuGtB7jOpUusquct5Uhg
	 OY4Q4AU4WHxiLEm4KP8YCCOye9dkeoALASRTaLIw8xSQz/vjtr1uQbQ6I6YHrsg2QI
	 LXSBTmqO6e5wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B92DCFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468837362.9603.9244656670620566462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f680015c0bc204163a46b22698636adce4d7a6aa17581a1d5be3d891faf070
Date: Tue, 02 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764688373
