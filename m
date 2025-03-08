Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CB24C74
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741399736; cv=none; b=T1oCAd8tqHKvlrEQeVPGxXDEoZqWI+gXAr/hw3n6OiG0VerFcQttYZv/dWztloinL9/H9gu3gpE0SJPPksCKdcpM+rltW08yHHEI0/xBIvb8bCICqGUfdITaJCIGW1Ugt3sQR9dVQzZBAJ6/dY5M+P5WnRf3NcxBHwJlldPkWoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741399736; c=relaxed/simple;
	bh=EkGua6w0k8q9OSxtSJO3u5P681iDeiIs2Md+KyjsWDo=;
	h=To:Subject:From:Message-Id:Date; b=CXySUaG3j0+2/0Pvg1Rdz6q3WKchupaWcgB1MjSYExMNBYdaMrGhdACrHmW6SIWBG6FaThnCuHWm1+knPbUffC07dPdzUhENuDLOPcsJofr4ePZ23EJh0/cyiojgEIyFHak84dl/XJlUqtW7OCmzWjyBHkpK4yoZVAKd/kE4+Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sH4FyQaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sH4FyQaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19E0C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741399733;
	bh=EkGua6w0k8q9OSxtSJO3u5P681iDeiIs2Md+KyjsWDo=;
	h=To:Subject:From:Date:From;
	b=sH4FyQaY2Yn3XJSmdmYpCkQsePLG3Z3N618mWVgyTSVSuMv1+khkMgPwcbPK2BRpN
	 k+gBWZiLRz6/vEaf8TmNB+TvSPwE6ABDNJB1r0YmDrbxu3SEHpMNYcNowA4BaEZ3Rj
	 m8cdMee39wRjkBwMtM/+6eSCa45wkI5VAoMG7VUK+lz69yKZGqKYcYMhIg8Wi0G5jO
	 +CNGDEhENZ0cIAZXU2BbbyZeRAauIctGlD8hdLOtu5MPDMJ5lwRPm2Th8w6ZEM9vhZ
	 /gY/v68YjjSyjIK4wFJTzG/V0SkC7VG3AOt6IH+Q7jriu4FLLI7YZnqDYLcew14L8N
	 ZxGvBUecWkWcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A886C282DE
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174139973362.3674.647091452872561315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25d360e50f8ae5fbe2b3b9f15f836850de96b4967675e920a841a2eeaae02ac
Date: Sat, 08 Mar 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741399733
