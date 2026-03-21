Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B273563F4
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774122894; cv=none; b=H92uBXqI3FRGOYyJvE/JkcueO/0G9BZWjcyF5Kb1qgFY6MI2ygurmyr+riZBaJoHKQgTl5wlDjsfFKwqsDj4Ge0kS1pSaYcmkVvrL80HLVZQTdFODV8wHhUVR6EZ3fzcuzvJ0trh1tZg46PrbGlc6rhXJldlIoOtBsxcWLUKnP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774122894; c=relaxed/simple;
	bh=4pMsg7YPJCquloHNs+B11V4H9vMMIMRcH+CsvRBWzgY=;
	h=To:Subject:From:Message-Id:Date; b=rGFLTUkmC943UCcFLHLn1l6WQJPELq6b3qzYi90Fn4L1qDsjV0688aQy+i5GIHRH+8UzkU7o/cVWMhN7Bb/j8rRc+66uO66Q0HRd9FbZSU3UfLZODNJLc5/WIeYEqAhGGGS5W3uIG12Z3BLBpWop8G+gtrHGzZX4m8aIojuDt6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzWHjwnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzWHjwnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42DAC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774122893;
	bh=4pMsg7YPJCquloHNs+B11V4H9vMMIMRcH+CsvRBWzgY=;
	h=To:Subject:From:Date:From;
	b=ZzWHjwnmtDFtvCzD4Uex1FTl3AKkttY2ZSx15+2tsRnLcapBUftZNCzXBo83Cc4O8
	 kslcXABEvyyNL/o1MbbjOf6TVQwFSqwQ+PHUIieeBKshxDpqtVMvxz/P121e5qYq2w
	 L0oTk6o4XhBjHKTQ+tPvFw+WfyU5JEbomH3oy0O94L8nm2Zt2pnnhIZudUB/AEG/l1
	 W7EMC2cVmFtS50euOt40zw3J7ST+kJwdEkoQ1ExtHkgx7z+EFm6sLXGoZoftHFmykd
	 U2Q4kHGLpW3NV17HxkS240lOTWLXfpwGKlrTIX1a2ljEZqn1JdRptYp6X3CZ92meJ1
	 Yss6uGQu0EX9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E40109448F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412289357.20965.4446567785520770454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5abfbf433254afbf20fd89bbb30848690f0cec0963e962f22963743a13ea38
Date: Sat, 21 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774122893
