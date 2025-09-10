Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3225464E
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757479794; cv=none; b=uZNnYcWS3zowzV3wTaoaB9a0fjOMtWw6IIVIRaSsGkRkuw33kVJm+bOw83XQnrEo5TEwaM1TkozR3DDcDKOvgQqMXRViz2E5d7XUHnl6rM0Pu4cl7WeKtUQiUB6v3pl9/kAa/BhQU9vWtbmWxh1q4A2y3dglmJAqFq+LgN+JIf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757479794; c=relaxed/simple;
	bh=Mzo8meAjH8pKHXTIc8rR4EGweaz7pJONY14mvRh4JoE=;
	h=To:Subject:From:Message-Id:Date; b=iEqM5lw3xCXpUO5XqXpl91jeDVRKxx2OV2XqLhxjOG0my1NYvxd6Xk4LQL9thbbpyKbQ2deA0auFzIMpVm5rN4fxQe4rp+1UWaZ3TPCUcukISbMWv0nxaUedGt5XH/C7A/Xf+j4aVn2A1qWV5r2h2/E6DRS9bCtF8AbXxNLBYqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBoDifLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBoDifLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0220C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757479793;
	bh=Mzo8meAjH8pKHXTIc8rR4EGweaz7pJONY14mvRh4JoE=;
	h=To:Subject:From:Date:From;
	b=pBoDifLzvpUc5gqlAQ/eu8FqJ87hhgxYXuUA2VHUKJ4Ccoi3HyUnRq3E4GpI8GmfV
	 onE3fj9P3NA+Gxyaa6fuQ/xOovBd8coeEzNuxvhXA6j5+rDA50mihe335YEPGe6fQw
	 dYAYiwIfEqkKNR4rB3KwYPzmoNdEuYe/frYK/8mF+z5uBKVvnGqDQdbAm4V03bmFts
	 Yj6slL1Q+oQKUFvas2jYic+6qbgSr55Qzh4wMxhfj2ayIayfryYKR2BSgTTz2jClKl
	 2pQ+tFBMhBDw5MnmDo9SkNN+rlkodTBJNI5vP1dm7jkJwBFhyVjrnDzR+A3zNQvkAU
	 BPYzPaq6cfZwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E437CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747979357.18197.10137710794824487855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba19c47216a0712740fb0f2f366abb20906fa26a400c6cf7c2bee548f929603f
Date: Wed, 10 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757479793
