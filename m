Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212323D16F0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779883954; cv=none; b=sjbq/V0tEBB5MkVHr2F54nwaH+vhAQnmaP5iyHa3TZ37un4egFSrTvYkysNYoDzC9riOHGyheBIlhVQbe58ohbA/qCywWWrP1v+yhCR1b44U4eNUtIQUirbR9dZF4fNYw6NmLdSPR9U3zSmLUTg3AwtrwQi5mEiiPD1gB0wCDP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779883954; c=relaxed/simple;
	bh=K/rJoITvBjwW3rjbykSdAtoeRiSC6nkLvq84W9JpqaA=;
	h=To:Subject:From:Message-Id:Date; b=Iyq91paH8XHqahfWsit2xPInDC0zy5IiHBtEVQU094iaiPLX7HNicJEwQaBd5yL9XvTw0zB+PFiBfX96pdasHUJuhnvOg5ny8Mbp6Dwu0MxisZ1rrhyG/JERiFLel8YdqbS3U1hUAYt00wR3MuvEVqeo0Kma9KEb/6w4hnRIkus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4Yg8EJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4Yg8EJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59C5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779883953;
	bh=K/rJoITvBjwW3rjbykSdAtoeRiSC6nkLvq84W9JpqaA=;
	h=To:Subject:From:Date:From;
	b=A4Yg8EJ7NnwrIsa5NNTHyew0Xmz+ApSaxQy9fEuhG0M2wtJgSRjMwb9xfa6mfQB0x
	 Kb9SM8mnN6OF6F7T/dDuBsZqHk8043gUHyZr64tYVM6Z96FS7XZ8Jnmb2lbXKn9GeA
	 tJgMqgPIVusfn9oxcLfyNzbbMqvLD/IbgQOIMFK3Ejpfbx01Bnm9zZ8OetNLdTPc9/
	 V2Cn8t+MtG7pAlx5CDdp0Hn8B8X5mBNCnC0nPZ2uDqt/KyXH9LWimpmxVc5bq7dobo
	 ZHW9OkLwpib+xe3PMXfmCdnqZNUeIVaH+TivHWi2o/KK4pY/Bo4SWNtc1LoBK2iRzI
	 Q7tZlxQUl4JvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA489CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988395368.3028.13907396967848095823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f188da1862f7f2523827650af7cc928e32d7b6f915a5a756e483cb359c511548
Date: Wed, 27 May 2026 12:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779883953
