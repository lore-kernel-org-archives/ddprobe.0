Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E032119DF4C
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745419794; cv=none; b=Kd6jbs2xMfix7cr7H+lk9Taw4F7IfNYv8L/EmNChm2rWxFxOy0AKKKTtwqnpJ/6Z28k2JznMlty4RAU2jRNXnWyfH688DYd27EiRAR1igMsGYuRg6+JJAOfDsk8jY6zCPgymgF/0K4QRE/AMAZ0+gHvcG1A52vCbsTVJDO0h/68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745419794; c=relaxed/simple;
	bh=nZrMNFLwhrrHBKsHu//IqGMCWrQwqFoprGWF9mdDfJw=;
	h=To:Subject:From:Message-Id:Date; b=MYD62eO8s9ahHDFVEXLW4Re+q6+t6dI6YjmHMvEF+Qmlq0+7uMUnl8Pjq62rgl28klG6v6VCo9ElbV091dhWNFl2fAjPgRP751rYRMmqzY2SdGCxsy6V2Yz7kjqUnxP55F/75HA4uzOdzQq+66dYZVris1nF4XftsVL/c638EeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QB4gIIC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QB4gIIC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B7CC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745419793;
	bh=nZrMNFLwhrrHBKsHu//IqGMCWrQwqFoprGWF9mdDfJw=;
	h=To:Subject:From:Date:From;
	b=QB4gIIC2qBCgz8HAWccmWxd7sdCJNLQy9z17FJk6p/7nQA0kTL2WK9rTUO0Dkv/Y+
	 32WRaMgkzNpC+fjnukmhizfVfyhDTMZ7H7xmCORJQNgyo0PCvPtPuqFwCKxytvd4tl
	 pch1AccQpVeIOwtKuPdcfAZb//jX7ToIZGHH3+zMvBevcUd3C4wxcFzaPU1qEW2Ik8
	 vg/euKFIvxALo+8lGcpcqp2kvKYkWp3csG1yPsU3RrewiyGQDy3a5z8NCG9S+ifLlz
	 Xcdc06K98rAwXkHlNt0eoVJg2q577Jeik6nCUZTmQT+PqqjEMVfpAVv9vv4ceE+2vJ
	 /xNdlE/ek4biw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F103C369D1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541979357.5859.4922149415489663315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9257b8e90318d6c04d23ea69bb9e7d01a70d6c32d5464d103b94ca0ede0cf98c
Date: Wed, 23 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745419793
