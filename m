Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118DD33C521
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770497634; cv=none; b=otfYYyB2MAPuR2uRocUnk0kq2yOSyDf+ST4bSOgFbWkMsDdEAWELiZO9Dj0A/VIcT9S3B1h5AJXSXzO4zDrJyYcC/B0ASPvf2/Pf6rWpk34FmyP2NAHsNwKyCKG2nzSig+3RdfwABEL4KK357lgoB6sjTjkRRMuqwu1oX6Nkj5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770497634; c=relaxed/simple;
	bh=G+t5Mjd+Xr8v/wB4m3rtzg18sfZiAfnG31eSPlYl7F0=;
	h=To:Subject:From:Message-Id:Date; b=jxUYkElzvz6Y4yn92eb8c3RCTysl5/3NYFVnXVDyJemleHCnSpl2LOEA3u0OyKHbnSNQs4yNkl4fdFr5tpgz5/w2Jka0hJ+Gcuif4cE9dWVLkwCsdlfyRZeJAjfRxnVkEDW+emmHl7VDKDX25sc2A0f9BSjd1skxGUt/arxW1cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4OpDfC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4OpDfC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94C7C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770497633;
	bh=G+t5Mjd+Xr8v/wB4m3rtzg18sfZiAfnG31eSPlYl7F0=;
	h=To:Subject:From:Date:From;
	b=p4OpDfC/952Ys3dZwf0B4/aWeAz8LmjIZzuLG4NRfgWiP04PzMyJrlgrG06VyVe8v
	 1zZvJG2xYSSmxDjTLP/7GFAO5E1dpNinvSaqvAOh8uK6K3qMpPE6QGJsvh1Bm3vBAw
	 cv7RRT7+FGrkZXvRWEbmE/lf84oOTOPb8mXca/wQJssXamDG/C2KaIKvwAYSYaxNNh
	 g6R1IDPcf1kB7ayMhhNPL6ajzONKz8cZkEOS+tZYY4FqurvQ0iWjzCyrOJJXQaMKN7
	 8fDZ/8rugYEarALws26OTFblDNLWhxWWzairp5s1n76oOaB4hN/UbfHgDkEdDNGdai
	 ZW1k2LCBg3iHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B66EE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049763358.6103.14095561783602458078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff4abcae196f8acd457b10c829f5dd2771867ac685ef72543aacc0b5527c629
Date: Sat, 07 Feb 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770497633
