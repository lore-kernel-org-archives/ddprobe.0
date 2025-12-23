Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B39199237
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766511834; cv=none; b=u71yJgzM3ZK6DIpkjiiYpuFaLZOY21+9OI3x4GznDbAt8BRA3b+z6m1TIV8xIZAvKX1WGhGkf9dM5H4MEa0wcDwgefhMOdHVvcQC3I7rcrp8lM2x7BNhiV6IIA4bBSBCqAzYPx8SR4+gr6CAdYGecoi9bjQG5Q9cC1fKmWIQp4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766511834; c=relaxed/simple;
	bh=oDWJOELUjUFkdUahgTjDCgQe6hMGLEhkHTQJ2/umWPI=;
	h=To:Subject:From:Message-Id:Date; b=RRnXyKIxk3RL+ZVax/5+fHTKxzAH14h6VI41238qhT9U4PnvEJcsADexU/+2AZfJAtCDcHD7Cs3KMbCWM5BHNEl7DNQMH7DP44kvBeqcnyRGbP/KGnnjWL6NMa1EtYEZ+urjpagBWKm3bmL+aSS+pbQWux2QH35hxDilGiaaINc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFtXavxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFtXavxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F22FC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511833;
	bh=oDWJOELUjUFkdUahgTjDCgQe6hMGLEhkHTQJ2/umWPI=;
	h=To:Subject:From:Date:From;
	b=mFtXavxv/sphqQzWiSNrsDeBjJGBAbc+eL0mVQgkxyVF65D6HyrgAFSMQuBmNRS2j
	 SB9FAHiQZ2YiqlQKjpdBQeLoA1KvsibJNZRd4JJo5nbcJq0oWQSaMLVp/Wz82TF+L6
	 HT9nMkRe1XnTWq+1Q/JXOxJcb67D4k9AI7ZjKNFQNgdJAzd8O1GDCDKm5O0DKUfeEn
	 ImE45ug56i+FBiLKbKTg2TkhDfsa2P/HJKvyh8bKB5i37JhlALN71kLOcQeWKCiSPr
	 FxS90HGo8b4mLtqiaUuV5NqP6KK6I6D2GjmTP7XKpDV8DK9cOCzYl1QBBuZrRoNBnm
	 zkU+wy6B8SutQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F232E6F086
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651183357.32055.9254688246879550489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6529d8b2241344676ea1e9842c55145237bab6c199916d0892728abe8ae4d8
Date: Tue, 23 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766511833
