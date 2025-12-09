Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162842C236B
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765318374; cv=none; b=okfbrDvK6rujXddFTgeZYG+tntU4VN+YhOCuA0/KKyH4RH1TtGYUwbzmX8JkQYKgA1UjDVhxx9hl0wzsgbv21x6ebXYPy9uCqqx44W+7zAE6Wro2Dsuz28oBeBNxreLzikLsRsHtfgCh/dx8tAIKOqDOAEDW3BfEPBrOQYTERQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765318374; c=relaxed/simple;
	bh=tBwZKc/6BFYc5P0mnVY0CSpW2YOtjpvSiLkRsqWRLj4=;
	h=To:Subject:From:Message-Id:Date; b=R0pP4MTpIGU+O1bl/gKWNdUXwN/1Q9Bb1HbYy7OvtmZYyEQOAlhgKy+QJvtadq+RPf2kB22ZWoylC/gLL3ehfZ7zrW5tzNNiKR/S8iP7brDfMg+vPgd1iU38qCfpBDxzdf7BdjE1zPcQHu0c4cn5kVuXZjE7KTWfYif3ZDA4B9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ2cBuIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ2cBuIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BCDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765318373;
	bh=tBwZKc/6BFYc5P0mnVY0CSpW2YOtjpvSiLkRsqWRLj4=;
	h=To:Subject:From:Date:From;
	b=NJ2cBuIjYiCp/qQqyOlrSsX7j6cvFP7RvrXxxTybdjWubUMsuRLXBlmtwV6Y3EWme
	 7LWywJA6b05n20mNCKOsn1irkffjjQjMHIU3+AP0MAbJyjS7N0+Qcrw5xJESzALKWB
	 ovCTNZnu9vvB+kdJxTstSH3t7gJJo1PgDSHsDdz/9/CBq81o2wj+hiei2NviR8rha9
	 B+49ESvNcYI1695nrSqQ+SKXJmSb7o2fsFlI96CG5TDpKoeZ2BEXh8Ahc0Xmxr9fb5
	 C9wO34Qsf3d5o1R6Y5wZNaJoxO6SYGVpgadgOZZVApVS58fYwx4kgvGT2Bwd45Nzji
	 /EczXBvKypI+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9342DD3B9A8
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531837358.16842.7899693876489346078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69fded51d576714ad21a8b3554ef00cce1168b4f941d14e09e984fbbedb81ab
Date: Tue, 09 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765318373
