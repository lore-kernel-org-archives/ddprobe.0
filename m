Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA5C199FAB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776296854; cv=none; b=TB9Jm2XQm1Bdxe6dYoEk/QpSd94D25KPIZJdlZHbn3ai/F5unM/XGAqLV6NJOSPXLHsvC5FA/cqupD3VUN7PvBB7bk6Dwtq5MNbMeTsSZSjRXiD8K9n9mZFrZRNv9UMI2s3Yqn681elBVda22+qWf3v/oLjhgtENlBFyUyNZk24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776296854; c=relaxed/simple;
	bh=5PTHxkxnc1O3iZqlhQiI2sE6CrSWFoeYVpYdo9pOLVU=;
	h=To:Subject:From:Message-Id:Date; b=r6lfDc2V0hteOI5rJ52wIEfNmCW3mXPP/6kcrQWTD81XFMOc80MQ0fdQCEoj8Rm92J33b5itWBgoxYwCEBfw42chbRQTZsOckYzmXDLsxLycg/tCqIwlSGETG+nvvwMiHB0tiZJkflze/ntirM/gAWUrhDaj8jHRSCfBE4K+Guk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWZ+hr6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWZ+hr6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFA6C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776296853;
	bh=5PTHxkxnc1O3iZqlhQiI2sE6CrSWFoeYVpYdo9pOLVU=;
	h=To:Subject:From:Date:From;
	b=JWZ+hr6QjRzl1a5aaN0HGBWwc6D8h/63At8/mf1JwVcAe47pMUpXyUDd0Ni4w33+V
	 vZTljBbctjDlH5qRcAyTgcG9BBTngGk+CCa3tc2cGEaUekg4LAInAp6V4izlA/+U9m
	 01TQO+o7YiuxZprheC3x/nQTLPQAgd0mGWYwHsk3xLySEPwAdjy1mbaj9yCh4QilH8
	 ncbdWtZEFsKnMVc7HVVculTDt8mznnVatb+dxBIOva+PmfxYT627tif71WN1p6rH/T
	 t7pTQPSTVOD+yKCW8e7t3W6S7PoEUNI7JK4aj6/IzynGvTXIrba9WeH8+9LyB/Thdg
	 /nXGrUj86qv1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB576F433D3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629685369.7029.2669220138417379860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a206020feaa7defe0410c69b0eb3cb90ce13e306d4e61d55efed53427cbe8457
Date: Wed, 15 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776296853
