Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B7B34CF9
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757206794; cv=none; b=MJF2NnHK++U3beRw3G3VrJ8oxYWkWG+U1Jp3Otfp+n9VeK3+Yn2eTOWWDG4FXus6wDCWuLyfyKA56EwN64pZC907aOPgDi3VIn9slC+p0tY1Oe5d2t9Sr8LxZMl6rLfcJV4iMjKE8qXen3n646nNcXhW1R8F/eBPqSoQ/ul0r78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757206794; c=relaxed/simple;
	bh=O48wFj/XP84wXVwqSNctMLmplmXzjK0CCsqmImE/F+w=;
	h=To:Subject:From:Message-Id:Date; b=k72CX7W+4rqap1AVis7TtqY1q7JJT77mA7txpJjcne5CavAjHIPopQisdZwOfDRtY6tm4PyYWLHViDzOuK2Qi4vaWvBBgl9vKFmQU5r3/U+VCAZ6tezdfWkS0iKoTJrtJsVXaJrdrJ4y+jY5axrKC4f0BCp7JzYUoGon9MXfdoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7S8bqxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7S8bqxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757206793;
	bh=O48wFj/XP84wXVwqSNctMLmplmXzjK0CCsqmImE/F+w=;
	h=To:Subject:From:Date:From;
	b=X7S8bqxSle2on4otVttSUyVGTuyjHQoAF4Jj+ijYjP/Q9mOYr3arExZmroJzj2Mgh
	 leHggvs+3KbOmy8EiW8pMhy3urxpmbrwmJ3LPBZk5QwAaTeecF6Rn6+KLRh8MTKcCR
	 iT7VpvFHaxeV03i0QuA1MKkk14MAgH3xoIVMxb9y7z5uptQfGwP2cFeT1OlgbwUghB
	 G1Nx/+/LZ0repC8I5LpQHoWWTCEfZr4+bv0RA0YPoOhocknK1LWRyuuNcJ07dWcwgN
	 y1iCU29hj3oMWOwWTmJZSgwZEuA2avrWVOwgHTaIuQj7tU7S+qNGRxxmKk0Q3B3BBC
	 2sX8Db8vUXF0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91142CA0FED
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720679357.8766.3253971265767335382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce2f4e52f2b15c1923b2149b4ffd3b5179d71544fdf16f94a2007fdfecf31e4
Date: Sun, 07 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757206793
