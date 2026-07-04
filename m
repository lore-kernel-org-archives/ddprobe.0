Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5242C9D
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783136914; cv=none; b=a1hb+/WSKHYQ+OYaPqnQGVQP9Zd8ayKp2cg2fq/5rAUenN2TXTK17GnReCWAxX3rv57vI6g+A0oxYTlx0Syv+Cw1naVh0TWDs8xCA4+dCc/E1TXDvOQlP1vpLjFP4/NUct2lfwQdCbUV0C3yF6z3rM53o1p10uFTTJvQeVjrma0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783136914; c=relaxed/simple;
	bh=7z6GKtvvRw4y0h94LBtULeRKnXKvDu1jPEJOkQiNIcg=;
	h=To:Subject:From:Message-Id:Date; b=mYsnZ8VWs1ZD8ObgPu0plEzK5Re9SmgUm4g18isKF//mR7TJ5p+5FF9PR7MX3l/WFqv/3ABi/4KXI8WdT2eir+KMmhS0KGqM9pvFf8sOplwB9k2f7p+bf0A1hUzO9+yP4pElLH45IcodreiH2LLNjMlmSzKrGd2GHne/aivuPZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QU4rJV5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QU4rJV5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF88FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783136913;
	bh=7z6GKtvvRw4y0h94LBtULeRKnXKvDu1jPEJOkQiNIcg=;
	h=To:Subject:From:Date:From;
	b=QU4rJV5JeGAd+1sScxrsyYzpOHemtbJGFfI3PjPRoX/UN9ymmAMQ+2lzsZPlTdZSi
	 MqUrhO3ztj9NxmEEJDPNDfBt/LT3q28BG1GP9THiKm178qCDqM/8fx/229StQunQy0
	 2tU8MPayp4KTrC5JLzj46YuwH6xZQ0PzQXIwiH4Bg5zd8TqL1Uy5QsOQMOj6FlgOIh
	 I1Os2whkkmsLb+WqtwnaKNLmXcYy/m+l4U/jtHzqWallo7yOm6Vrdr4z1c0FljWF5F
	 tjDIWaODQgX9ilcvMNIBIwpiBAE+YXABF/E6DFPMZ2paJqhGw9u4GHQSgjqdoUMg1x
	 c9B5z+87uGZTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE296C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313691368.4939.6553154371073406688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99219d54fbccf8ba25e2232152c4e825b0a9b42c9823faf0a964669e6dab4626
Date: Sat, 04 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783136913
