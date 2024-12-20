Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A18C2594B5
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734668754; cv=none; b=AdeaxKGEE3AQvYhIPk7cnH79ZO5snIecoZyc9OXrOEP9eBnlUyzoRg7b++87N+HNUFFcNO+C6q9I6BBz/c/yie6Gy0p/cuIAkhrZA4h+KdcwaSlfi3kEnFvrVOUTQYvDZVLwHVU3FoyABtktSGTFGBF4dmw6bDaguaRJ6I5DGJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734668754; c=relaxed/simple;
	bh=UNhCrpZXXHJqxB52M+3kIS2mrbwzq/A06FJFOOzinc4=;
	h=To:Subject:From:Message-Id:Date; b=n1X2Of8v89A5XejNHGK8vBBL5SFvtqo0njOPKfuR59/Au3QqjIvdfJYM9xiZZDOEAir/LDPWhtc6nfze/SicxYZz8f4psTaIC7yTklGdOCQwTmDZE33QEMBqz9PjvGNO8y2sF5dAeLGZi02PiWH7BI1lPvjKVfYuovl5RFcvLBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oz2M9gyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oz2M9gyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A9FC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734668753;
	bh=UNhCrpZXXHJqxB52M+3kIS2mrbwzq/A06FJFOOzinc4=;
	h=To:Subject:From:Date:From;
	b=oz2M9gyWhaMtxm8HGkZcu1gRd0HBH5XJ1iKPlG9jlJd70Pad5H7uTJ2GXnywgf4W8
	 8h3khgcB91LymhpBjbrDH29Golg8VnVdY9ygBs/N1V8PhUykHlLfYJ5adpuwCmG4KB
	 yYu9LJBa5nWH4lS76F4cL8vFWqydSvt4WRZfu2yYHlzwkHJaJQKcGmoIYvp5GTfo80
	 MFZCF7ywxqtblxQOoTqUfIYsErMmkOv2Y+Tq+MLxrmPxEL9/VsyfDnQB53kNUvGh+N
	 wDKjzea4p87zbbz40Nt0aFdf3b4SsS9O29szuPrC2nq6wAIFQ9TMRcRBsjj5rxrRzc
	 il7dHONSguzDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E77E7718A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466875361.25594.10145687610465989433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bf4045c0948683df24547c4d549a19f975ac26df28a8f089d1a54416bb7503
Date: Fri, 20 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734668753
