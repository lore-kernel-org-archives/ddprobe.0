Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373A331715C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778104654; cv=none; b=cT5fGznFjg3OekU8MT3eFPpvm7kbACWxHaDCDODQXGASnPFVL5ZNyeo+C+NOKKXF5pU1BQM0+6VFMD7WlU6V+iwVFrDaHxtIERbk87sJ4rQwn6RleRe3J1zKnktk9YUakLFHmd5OyMirkRVEdmMVQAPOzFlny/mIab3SFqKDpT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778104654; c=relaxed/simple;
	bh=j9fqDWD3iO/xEIYiKM80xzmM4NR/S3DEgP9BkKK8KOE=;
	h=To:Subject:From:Message-Id:Date; b=EzwiA9pSKcXMdPzU0cnUaHdZ+t2D7tOhMxQz+ysM0M5btseNnrWMFv3TYRisTkvcJaneatj8MBqbaez/l1TIZgwkstXOkhN89QRl4VYKf3qLfLmGq922R9pcj1wX1/5y2Oan/GKS3/cjBcMU8mcZv0T7ZdWnz/K1a2LD0BNdiuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mplCangK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mplCangK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA5BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778104653;
	bh=j9fqDWD3iO/xEIYiKM80xzmM4NR/S3DEgP9BkKK8KOE=;
	h=To:Subject:From:Date:From;
	b=mplCangKJVYu5vcuPLwqrD+IhNlCAk6XpsAqQxkyrZVm/l7rCG/sGxcx4oTlDw4Uq
	 YbgVr8jGrDLR3/BaCOrDD9XM+X20xuXYeCQ/1Bpg4YfAUi8g8kxshHJl9SowY+fh9e
	 wX3Rrr+Y8dfgfLlYVCRnDBDyuJt7LCGCIn5bp7AMQ08Ulx6E5RWMV3YbzVrESNbuE6
	 vmZG4O/yPhiaVRjyUCXeoSYeS/tExiyl76To4/hLPeWpLdC5WT+ny/wIn6iIFYk3w0
	 XKo/fyOcZJ8WsjqQDhTPa+cw+mjsftqxat7J6Yg0gW6+Ot8QtiBRqhJGB9h0lUIrUV
	 Mx6eVSqTymfEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8B7CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810465370.942.11326164230940186115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6128682475e29408cac86caa51f308aa7a924d13597ccee49648732687e15c
Date: Wed, 06 May 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778104653
