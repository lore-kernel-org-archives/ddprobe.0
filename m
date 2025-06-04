Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E349150997
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749053994; cv=none; b=d+i9Iq6rvWRcoUbgDGor9a9pXcSC5WgzowNPBnPfzC3BefPLQ8iCjWB0xzaJBYG5iEwPJdRPynFKRU6YQTXX5M9CcYNEK7bz6wiTjGixSGQJPgi0MqraFY7hgzfySNDAqiNC6DM/WO+b3utEUdJh0+vaVsrd1l94LA8LOLI/GZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749053994; c=relaxed/simple;
	bh=1wkM9R1Rzn2vj15Xp7B0nZce3suCnJXPsHbv4UaVPZI=;
	h=To:Subject:From:Message-Id:Date; b=IwD2rqY6G4b/L2H+gEGTKxr8UQeTmxlCs26DJT+990eXAcrKZJILt+dH6m9LGq7k617ProYTCpzAZpXWxYCz3E59pjgR0/ZtN7Pv0+mrMxFloSx4EM7y8VbU70pVQ/rY2oQtggWNVdrjmbChQO1DpN8/qfXKvOp9jcCpI/5AlSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzTHZUYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzTHZUYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE90C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749053993;
	bh=1wkM9R1Rzn2vj15Xp7B0nZce3suCnJXPsHbv4UaVPZI=;
	h=To:Subject:From:Date:From;
	b=hzTHZUYXCS6HoAp3JSlZGUisZ68jS9b9FWdavz05jEo63f9elj6oeb4GJoaPQtWG3
	 z27tZopyjBUj5deFPLoHYjqTtoaI9oY6BUF3aErsnaLCSBkI7SuaMRvRpPaezvQzVi
	 /7GHIiQFyVL6esMpMfUm0NlV2t5CuWHXElW/74h1/PbBgP7JDEKeUgTCEbPLWKE4XG
	 F3tg0mmY+8U60I5etG8djMjnfU80qdLlSoYG4EnSyNA0vuI76vhV0dvRzaAKofQSkJ
	 UY68xTU1WGWlTyAZTZX7UPPfRpVONO64j6dXVuKF8V4MMS4pMr23+kWHxy1zY05DkO
	 f7jHRna4P9U0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D57EC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905399363.30382.10269258227903795959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e40906324ded895509e5be26b7f736dcd20b0b3e80d784b63553c4e031de585
Date: Wed, 04 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749053993
