Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303D41D5AB7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754452795; cv=none; b=OXMkLfEMPkYNI+j1Vk/uK2904ym5WlW13A8LyM7kkjXGo6dhtvkfq/Zop1Njud8XcDQiTzCejoJLnMtMpz6NOJr40kSLxw2sm0LhyJeeIs3tmboqXGv/pBCGDN/9V43byMFwQIefyGHGyWVJVc389mh9wQsGhFD6gLauZ2dwzW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754452795; c=relaxed/simple;
	bh=r3H+q9T6/s8PsqxlgDUP5p49PdaUTbJP8LE8Gzb8bEg=;
	h=To:Subject:From:Message-Id:Date; b=ckhlci5RSGyQ+inTK/mlNwiIfNDTSKH8o4KLoWlSwcQQvfyff1oszkUGHY8RCubx+mFOw12vx1sXZsAU3A5XhS40lnmXCg4VmnJj13vR/izyDoTOzpB2WecFW4+yGRDeg5c2TtMT0EEyCqQ7lkI9e1NGwHBu6EY4Yk0tUQp24G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5EIEW1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5EIEW1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A358BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754452793;
	bh=r3H+q9T6/s8PsqxlgDUP5p49PdaUTbJP8LE8Gzb8bEg=;
	h=To:Subject:From:Date:From;
	b=R5EIEW1kMky+ZMAfiNGeb+J0G4WVZErBZSwZ6dCqHoAfX9zJKSoW3+hJZIXceni+o
	 aPwj6L8I4M+qd/Bhhr1BsKubPHgq1bO0apj7ghBSOOv3aeygnAL8XaOs5n4a3yNBW7
	 +BhyKAHvjediaF9MRCELwVfkKj5fLbbltyEV0X3BIJkbsv+U33PaU6ZoMCJRn+zK7Q
	 AOdhkTsiLE7C6yWLuAD9ogH94rEvxmIFVDb2/lYQZNstvw8gjx0CUSvxdZH9OAHzdr
	 miXDT3w4VEesGQ160N+SRmHSzhqmSemKufqn7QX3C2dsbdN8jGmilVs3+0kSKeKPhh
	 26FwIFOWSUuTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91811C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445279357.9517.12239257731041008592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9907f73d6cf5e9bd48a0d83e8877fe66ef8a3bdaa0a85d770e23ea0a95022f10
Date: Wed, 06 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754452793
