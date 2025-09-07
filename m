Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ABA219ED
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757287794; cv=none; b=KVB4irMRmzK4xdiRhurJJ2ZFnwTEQ7QGbREvofJww+FGlYc2rm1jUiGUlIRcfILHisA6mQG9ruhhaQmLdNWoaT1qXhKc56VPDlqia2mpyQsJWvizPSav/+rXU4IC8ZV+VgitxB2jfyzkSOYNZPOk/0M6Q6p3IqSH2ztTTG/WaHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757287794; c=relaxed/simple;
	bh=QR2garsoONXrI3biOM8n0sJGPD2MkueiF1ppwBqMBPg=;
	h=To:Subject:From:Message-Id:Date; b=SDjaFBzZ7aUxDegSvV3HQxXjqH1u/+AoWQgPKsbtkQNDqQ5XHY9U3p9PIqIN5mciV1/W9cs5oqTO1Mgw3QLGJ3958v8gFYbo1isr6Q3S5MHqDQ+iS339tJGvrQhXwluOpGXpBmXzaNU3cn6aVImQJBtMheCiFgnY8fbH73tXCU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWTUy0/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWTUy0/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2678C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757287793;
	bh=QR2garsoONXrI3biOM8n0sJGPD2MkueiF1ppwBqMBPg=;
	h=To:Subject:From:Date:From;
	b=ZWTUy0/C24f07lG4Iu0Hn8UDNeKb055HIlSA2HjbdCXihtg9TEJ4XQKeZNSxmG4qS
	 4F+e4tZMnC3x4x+QQO679jBj+hk6RfWqmX6jpte9c5FqUTkm/jOgPdxRQGC4dub0ra
	 /5p39ehD16z9Oz6Rchgk00EmwvYFbhNnzocE6g13w5Vt6LjGBQJa8H+q2trI6ZoiXx
	 fhHCc4/MniShvU8lPrpkcpJw+lX2G+E5K1+TGjGdx+eMJPuQ9QsQy1Z1jSSIqQjB6l
	 ZYzOxPM5YtJgM1XY9rDfRn7Kykau8p62THVptNttP0Y2w+5S8QQyVtfmkPIFAXkLgR
	 zIUILkTyNS3Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D4DCA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728779358.29064.7617838570700910700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf279ff2803df92f2931839900ad293583874dbd7f37590585ecb4ced87d16b
Date: Sun, 07 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757287793
