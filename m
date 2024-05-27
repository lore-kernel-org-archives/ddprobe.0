Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852FAD512
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716779063; cv=none; b=hRSzb2cBEIPcllHxAiTWTSm3+b8f5lEeswlwWOg7CPVI9wSHqhxEOEB57G3kjidJFk2c6TNduET4SW9T0OsnKJ1oQ1s7phMAPuk/LVtnuGnIv/UqZYgOFdMFpcF8LUms2CHDBgC94AQZscT1a8nU1JlJau6tUx9bFHu0VVe0Lpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716779063; c=relaxed/simple;
	bh=0MqlLAToi1ZQZTt96mAIQeWjTsqn4/Aw+Yg7UIqzOSs=;
	h=To:Subject:From:Message-Id:Date; b=Zwhed3QTqQJw/o3UxRlGsz6KxQBG4isH+n4jfNqOztm8IzHW0r+JCe4f+zqDpFPb642JMQ8Yg9UYskH/Ds2CuTCMcOCmuf1wRK/lmN1CHqyMsrpE48n+uomrmOmzT/AOhtDOWrtJD85o2yHWVJxLKgjOHwsKRgZUZz0j7ofhT/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7OrK3Xv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7OrK3Xv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE747C32782
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716779062;
	bh=0MqlLAToi1ZQZTt96mAIQeWjTsqn4/Aw+Yg7UIqzOSs=;
	h=To:Subject:From:Date:From;
	b=T7OrK3XvlCqOJKr3589FCo6n/95bBxhS1xiQIIL5k+2pn0FniAoDQCYhSa+72smmb
	 twdAlN/0kT+tbEjsOuwGmPEHKmbjkIddL2YIGvAoF8BjdIIZf0OQt3PzFdpk1rnwWW
	 VojCIg0UVg1jl5ZJNduI4mUc4vt9g39NqxKMtVg6ssWrANwsW8wN6YUBgO4Pex6e+V
	 vBBI+sjgp02AFR7+x5E3WK45AGTrP8WH3yGVbD7kG1vVK8n+dyCHAwmZWd+nDxwJpV
	 haIbi9WN7AXRXr4fOFPnP+GV3mzcbsOpCW4loMVB6x/ci1Zb6ozwJsPkSfKzu6QoI5
	 wWZwQvKw9iNWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3509C25B7A
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677906278.17410.5935937615567384374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3237e38b3bac6742d435337a8bf38c02604b550455242eaa68d7610cecc2211
Date: Mon, 27 May 2024 03:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716779062
