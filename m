Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D883E51C3
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778948434; cv=none; b=oneL5nXRpb2BfURbOgguNXAfmTCeppS6wQUo4vCcWq6rUjqcYyMXC1I9oiEwqqfdg4XF740HSiwNk8vq+/uNTO2gtripnBo78Iu0U9RZNHQONa4XPTleIb5EdFIzRyckumb7/8x5Bn7rVE02UfP4kA4s3hIA4FGdgPZRCfqu7cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778948434; c=relaxed/simple;
	bh=bmaPJx/n1vFCZoVIEq0o4LQej2BGqF8kWtnjsB6uRIc=;
	h=To:Subject:From:Message-Id:Date; b=AKO2ZnemITsJzD2JzO9AVNjFEC/C8Te/Yqz1LHFzOUoan88K2jgIi3o86KzVfYlzNYYkeb6rpwA6hxfrogk4E5YAsE+U3o2YpDU93WneFCJjUAHpAJJsojSU1lVYThpM3cE5sud2+BgF4uRIzQzIhtlKDqdpoiJeEFuzULZQCEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8eGkwkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8eGkwkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2559C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778948433;
	bh=bmaPJx/n1vFCZoVIEq0o4LQej2BGqF8kWtnjsB6uRIc=;
	h=To:Subject:From:Date:From;
	b=C8eGkwkPySEnd6IyhIc+t21gDYKGSevdm4KDpqeYR3rdaiTXFovJj3rXsbVqitemo
	 I2s7rWbiNreUx8QZYkU7IJ6eGe0BOx4gIOiGwtqBmKjWdWp2H9h68yN7yR5typg0FQ
	 XoPFZ9vsspU1AroxiU8K9C9M/1mNLmRUSyMtXBWFKcG9kLNwRmgjFST5WwTo+EQGD0
	 CMBG/D6rT+IoElF8ajyq2iP6e9umuMQGrOs5RxGN0CJTRmQSm1IMeexlEEAXHntnbZ
	 e1LEhbejnwLCDPYoTq+sBEgzYS1/HxJgA7C4iFP1G+hiE52CzPQZJgqh4cWVzlvenK
	 LinnDDijjvsFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00CACD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894843368.29962.1990394283759199060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2712a7f9bd5bce901710088f20a8d0d940d2915b42e5f7e5db014be2da0c1af9
Date: Sat, 16 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778948433
