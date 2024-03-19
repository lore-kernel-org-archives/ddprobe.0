Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E371CAB2
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710875896; cv=none; b=ht97AU37PnzCYYQCZeFS+FQ5PORnUisxewBYza6Lw1EAsZ06PZurnKLgI0Ir80rtfmrld4gbe8gW48Ofe3hFjPzTKW3Vdyha7i6xvDkGr5uBWeSM9mX7I3rHuzPX7rYHLvIk3GYTs6gWbv0bDy7I5HKtrCR28TjbiDKJHnKdAeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710875896; c=relaxed/simple;
	bh=PdYhjvJcBf9+Z2qIN87PJHwE87ChIIChmFtbU5sv7tI=;
	h=To:Subject:From:Message-Id:Date; b=ty/5k0SBOz3HBuLrThirXyCTojEYTkGRgcv1NtOldNIYnsmetTK62i4AR6N0rGP3eDSGKgfkEyP1wgflDBvT2qRntdAJBhN0IUo/aaKqG8F2wzC5H6W+LBhS3d/7Io4Nsde5wiPbi5uUpUHsHGfAPBpwsdZBYWMIuQyHeFCmxI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaEKCWOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaEKCWOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB4CC433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710875896;
	bh=PdYhjvJcBf9+Z2qIN87PJHwE87ChIIChmFtbU5sv7tI=;
	h=To:Subject:From:Date:From;
	b=uaEKCWOBuyDpKrYYX3xUwbF9+hH2U1HmLbWHxHWgQNC5TIFCf+uSsru0ydp9x+2Ew
	 3NPEOsTJdBNHHPYdLZnxg1oCuJgUgJCzNxbbN6Yc+K84D23g+YrEFmohIb2mJMwRoK
	 H2Rg+EPevCOw1SNUNCgBuMU/++01NDCR6rJNFWY8Q6mMRa5kJGlN6+3qbbOJVjIbN/
	 oy9wuFi0Dx2NKcyZYj8TiOROMRflYsjEh2LinCWET4yhHHCGvpTNagU8RaVU6hk+wW
	 moxShPaYieOi2bxfIcwWOce1xVWVt8iuNQ2eJ3TCh5cFPN40OQqgsgnNTJrAbuOZQH
	 3eHGSxQ47t0gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E446C54E68
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171087589637.1719.206629969865977656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51f0c41aead74e40e2e4e63713bc0ae2ce23450864aecc372efdd71c8816a27
Date: Tue, 19 Mar 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710875896
