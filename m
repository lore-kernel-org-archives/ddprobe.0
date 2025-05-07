Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2919825DB02
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746619794; cv=none; b=bU3CKDJ/aNxUV7/TMTtjb0IjntSmbOZvP+2cdN4aJ4gN6yd35JnjugZlu4DvNaCNWj4A61brUdSRUVtQK4pkNFMt+ViVEkxVcbOO3mN9eiFz3upP6Pvo9uEVQfBThs6VhMrOFISbpeY25/48cQDmiVipnghkvKEl8se9f/1QZQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746619794; c=relaxed/simple;
	bh=Vnefv3p9mm2a+BOLFBm6S5YehA0yqgdTfTOYR9VKwP8=;
	h=To:Subject:From:Message-Id:Date; b=L8XF7q5Gb5QHafs5OsgJ6kd3RTocTLjZFdrOy17rKoDr69BQMasrPJuqQjyWgiX7sznwTlW21g8klApiWWl/oYBR1h2npN2RvGEkhYzTHR9GEldKmYBZRd5zqegKwQhepzw6Ur95PRdkNRLQSMwF7hgM9stC8YFUswr2zqrsDTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1FNuPe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1FNuPe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A156DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746619793;
	bh=Vnefv3p9mm2a+BOLFBm6S5YehA0yqgdTfTOYR9VKwP8=;
	h=To:Subject:From:Date:From;
	b=W1FNuPe06T34zFVsDdC5fJyuziBiafetbhyfFIOSW3A5UkLCxwtjJnVgYOZnpg/uF
	 jrC+5cXZs8qVKHC7NXOS/uK1NeY7NSlAwRHwdoIUl5dxzg7Bgs3esLbiMJu/c4yepc
	 YMlk4eYkshu6UzZGLVhTaZQIWEz7FsazYD+4+5hTFqmftZ+hbkQEsu7r1JXmbjhj32
	 UO6x4t1Kxk2jtcHrvj+47UnvOVszelD/jQb8mw1QhacRLzYoJYQMdOwK2jXTR44aCV
	 CpDtynBwFCrGtpa9lXdPRJKMw8UxVija0nYoH4PELItKPHQM2yeiImjZxAJjpY4/YO
	 JHcUL69YIx2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF67C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661979357.10004.13034132359390653293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77898ad703e6b9b1069ffeeb0992b0b8b794931a7eb2d7fdff4ef5a8d1b12fa1
Date: Wed, 07 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746619793
