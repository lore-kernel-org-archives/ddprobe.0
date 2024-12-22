Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F821CF8B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734843954; cv=none; b=M8J3E2KJkwCtDEgXrp9aDanmTiJe9zMUgjYKblVBcyezPlt70uvnoeb2BGFOWFUWMt55ThtMv7kW9ITS26te2YG8dTXY9w9KgWVVniHqoEdbH/dukU13z0gW0PV7jHTO9AuTa4rgWFwGDdGWCAJWaLTmnuiPH6H3/OVljMLfX4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734843954; c=relaxed/simple;
	bh=Ksf6iaU93s3cchzqE5UG+sKfncDwb3xPzb2jqrsk+9o=;
	h=To:Subject:From:Message-Id:Date; b=MdWYxLw/pr4v5lNskNh+9mI2OQFYw2IBd+jg3T7LXxBjKPMq0fFBQSFBhj1N0B5gnQfsTSsjYd8Z1x/un/SIKqu0FaLU52yjr5jqDGoxh5CDhxmm84dS4vVH03aRjspyemZkHkaR2U9yKBlr1sJmHt2dDFf8LmBXoR4vvKsHMsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/onfWBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/onfWBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEC6C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734843953;
	bh=Ksf6iaU93s3cchzqE5UG+sKfncDwb3xPzb2jqrsk+9o=;
	h=To:Subject:From:Date:From;
	b=R/onfWBTQCMfMt1fYshyTkMnCcdSxvQKFAwls9NzOEkE+hPRFn4SE/pcstfA4hHA5
	 oVNuvuUBq5eIw3eQNb5JDa6oSVRRbJsurIbmJBBvrhKUv0p67juAWZctSwEpOb5awB
	 j8L+aO4FIK/Xo5eycCh3ewzo/e31RoSv6Xll3qnuPBJkIXCAjybWivyfypW366Hc5R
	 q+IY5qPbHvFIUz3rWaA3NJHr6ZZYL9vEb/RUxFsBrQfijyle4YaXRg562a1IdcediY
	 oJtIZOapC6fqSjXKpvbU/FXUBwSs7QOAxjqEf4PCBtL1oYK1ez/3AHaEmqe9rAkLpa
	 8xDw/EtIJtxQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9927DE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484395359.12628.10457621126983257733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5b93a0850fcdedcb4278b87f73eed5f2f64af9c41bc2acd07144acc4ecb7eb
Date: Sun, 22 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734843953
