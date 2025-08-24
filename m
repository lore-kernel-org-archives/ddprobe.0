Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522E31FDE09
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756056595; cv=none; b=t4pQwNQmpd1Tk2Nj8a06t/kXDi/iULN5okkR4gcw/qgU72Ti//WRZJK1MZQdBBsZb8PC2jqQC/hG5jYfn2HYBPK0bCXgpx9SropFLDIXrJ0IzE2QYZKWeUUum7bzs0xCJ8MoB6UQ9NiWopqejaSYWx8t3XXEDojr9ehEkvfdTfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756056595; c=relaxed/simple;
	bh=22z+lZ0sLZrvM7QAzvMBkbNFzZ2vwnF+4rsXR9GmiH4=;
	h=To:Subject:From:Message-Id:Date; b=KLn4anwt7Pin4xajkNHTTQpFnUW9Ll7++Mdh7RWN/kX/q6o78TYG8BZEWmXoiYLyJ5ZBJPzLHX0d3OE91oYDE9/gPv2mcnlCHBpZtzGNZjEPS0I3uIpv8mzZC5+vCYr54Fw0ULvdK/UhUiPXYrszRmJLGG8SlVu8MHSCZWi7ydw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxV3+665; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxV3+665"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59A3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756056593;
	bh=22z+lZ0sLZrvM7QAzvMBkbNFzZ2vwnF+4rsXR9GmiH4=;
	h=To:Subject:From:Date:From;
	b=AxV3+665dLHPa3rQFvXGgeGcI+8hX5+wItNKfRe2JK5RnvvXFGhrQ6BSE8aUnjUk+
	 +Korya4oBiiHQPbDwLLyrYyzuyHqgsFtSgIBzYknKvY2TkUnQNJTwfvwLZXw+frYtj
	 3CM9HX5TC1h5s/JIDGr2Htc6MelMi7qIaz2Yyb23yh6R8lhg3+o+Kgex63QrNJVXz0
	 AsH8kCORXmMF/yIBSwq2n21v8YYrcCFCLB4EEWFQE0m9/2MTKOLlPUb07c8gU0SEgf
	 FcZHgCnb5E2VVlCkw+7lbz79YtpCqE/ZKNsU188iBBz1khNIwdSYB3BcZ8GZlYjPlK
	 9klwAjP19PLSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9405FCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605659357.6476.15445854374463540652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf295b9cf6a6368024fece98ae73d4440e3afea720e917eeb8065658e703b60
Date: Sun, 24 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756056593
