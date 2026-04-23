Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1947021E098
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776920854; cv=none; b=PKnG4VayKZoRDOfN8szi6xzf6yO2uuwB8xjZhtAjAFsvVAfTUz0kVhSFzueRUDndLFMTwtJw9SShwwmvc9rjJe5w7gwhD6EbBjD50GE6fD1vbtWKUTgt4sriQ2eZ9gWGE5tQBKJUxLtGXmYpxITm4MCeT+H87TO/xDDB3XWr7yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776920854; c=relaxed/simple;
	bh=s5Lbqzg45upzXQG7OQfWBXJMoh62yIE+SUGR5od0zRk=;
	h=To:Subject:From:Message-Id:Date; b=eLng7w2wEuY+90ICB/v5mjWH0Wn2gf1vXjHYb/aEfFtxOhxPQv7orTR4Pc2YfVfZECaJGcyE/V6Ps9+wFGoSlmGM28e/NmRPi4+2yc7sSvo/amDR9WWecWyYb8xz+oASbduI/SdbR/HR2LxKysTnhNnj7nlNoiEc3Lti4GlI/NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pe1G/B6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pe1G/B6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD1DC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776920853;
	bh=s5Lbqzg45upzXQG7OQfWBXJMoh62yIE+SUGR5od0zRk=;
	h=To:Subject:From:Date:From;
	b=pe1G/B6NLJx6LVQFBb9yoiqcsbVXB2x25YZJXIlfEBx+7rHeiHdPslvSJ+PczB8yK
	 cSZzBmy77UOD1kn1n+G5EFM4G6PhpwPWcRkEnJUqq4s93/QhonCM0t33w/DUjLTvWa
	 mFGTNJYx9ke0SWflBee0xnDinJAkMC6d/GeWtkwDkZWT4esaBFBVao6YMNyoafbK3v
	 ZLgOD1/DKuH3Ou+PvAUN4rLSrA6mu6GHdd8/xSfszbL4hkOWvYwjMZ37mjAeokxEwG
	 mfqYeFMLnf9YAcZdwmEr1LsXWOqol7AEp54KyVVVP3Icuk7JJA1w/+T2Mu1yJYCGDh
	 vD8J8EwbE9dng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF2FAD3E7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692085369.9700.17687095611239925899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b654a3cba10d05d193309d00d1a8bf648caecfc866d21fb0a26ce5742bf498
Date: Thu, 23 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776920853
