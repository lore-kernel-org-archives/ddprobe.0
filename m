Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187112E3B03
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760441994; cv=none; b=QLQfIXk+TGvzGxh8oW/RyML69BkWWUj0jyy+sUilLpgO/0ym2pObwTKRbRK8ylLw3+2/4WaAnVOnYL/F4jBycN4Xh88uD7csdHDzQn8jz1AUZ9QrRgMBXNPQ7X74pQ3xksorwbgr6HwtyW3zAOrCwlYRAT0OMoLRSCKtq8C0p20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760441994; c=relaxed/simple;
	bh=NfD2tOHdgJjLUKUoHVkmScYmEBTOiEDc8ZXS0v1avGk=;
	h=To:Subject:From:Message-Id:Date; b=WqbPTIjAK7fDPuX/E0R/HR9lV7gYRyYvjEX06B+6cksd1Uryc6z0GkoGEfi8lpJC2Szrb2WS6hgcj73ehxF0JXE3aVU4ynwdaf/Wt4Gc1CbKQ4smHlsDMmUTpx0ZHZ1BJpWRDkQOQQ23FsfwIE4fb/c/eVRyXDO0SKx8nrFe7e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOsButkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOsButkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D5C4CEFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760441993;
	bh=NfD2tOHdgJjLUKUoHVkmScYmEBTOiEDc8ZXS0v1avGk=;
	h=To:Subject:From:Date:From;
	b=cOsButkFn7GcPOdymu97eTqsUFzO9EAtKubZKjdKFduzpkKM3RaQyaZECJRUKguql
	 u0LErOft3IIT595V13IbhVdj5v6vrlsPMs7GtvEpnELKhi/9F/nMzCUM5iWXrCAmMM
	 DRDDWIjniFDZm1f0gvfFhipW9tROSS/WI/eixq8VPcl6OslYMZR5vZIAxZp9t0Gn5/
	 17dr6SzpbLHvcRPqDbhfg9b51QQ+TLdbKl57K9Tdax4Z97FCBZ7JockIv0juZtOkyz
	 n3HxGNp3j63zMFvFohrtl0+Hz68M6f1aJ+aGCIAmLqAwTwYFuJXa2yRddmK6mt6XaD
	 j90WViozcZl/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213ECCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044199357.23765.10812727507003427847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb92be49ddf40c16912330cac9306e21789ca722fc26770b8e652ba8f4275f4d
Date: Tue, 14 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760441993
