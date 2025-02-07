Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5C61BFE10
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738964154; cv=none; b=UxG0fDd0d6PbfuqclwbT5GJ6ocHYbC76exHLVHKkNlLWcU2fEDlsooACozXAt8Bs0SGLENZSJtoBBC3SBQk6zrhlb4w8uUe4ZMg/Yh3NXqhVwKF4keT2AXHjonkkR64aDYd5C2KMare8QpLnkJ9g8fj7K/bld3SGUZkXdRMvtMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738964154; c=relaxed/simple;
	bh=0AKUorCScjwdVxNqmvCZnUIqu/P+csErKWjqC87WR7Q=;
	h=To:Subject:From:Message-Id:Date; b=ZSB1DB1dymUaPufRt6ECCR4a5/M2EDfLcjhuNQK2q108TeVOkQCCoUS3KfpxuLy7KRE+rLlFhMRe1cVH2PFdK3lw9v+XFsw1e0DxubrRd+DdpJlgBpjwf0k5rgGWOwHyoZTTcELN+p/t51/k87E4oCjHT2SK47UCgMlEg68AXZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkbMymQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkbMymQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6D6C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738964153;
	bh=0AKUorCScjwdVxNqmvCZnUIqu/P+csErKWjqC87WR7Q=;
	h=To:Subject:From:Date:From;
	b=qkbMymQjxjPqdPE4N6IHL3XZJi96Dj3BCyPkN9WcJF/lRfQo7YIvlvGho6+OqCQsm
	 14cNfZ235m6VLhHCpRBlgIecrbGdl3E47lLzC8CWMk+drydigXWw6jAseEFmHvEyil
	 8oChPcGtSFj1/gw1FtAzXn7Avi1hReZlZIOvodk2CSu+/G0cbijgKGXzuhSKmqmbpq
	 4jdcGLf5e4IzubT6f1JJ6uy9IlvNAr2gHfx3haT5hNQxvhrxbOa+XFHe6UvHW54idx
	 percENEkuOFv1fRXC9LiGdu7r4qZXRwiGGKqRiQTOQqd3MP7l8U2ixZ8el+pGzSGxT
	 M5WAsxiMFnuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95247C0219D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173896415359.24745.4431799475671930330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86eee0ded2fa76075e2a6276cecea0a4c80726fd0f298568118d36e9492b0675
Date: Fri, 07 Feb 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738964153
