Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E08A41323A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778676634; cv=none; b=pznR0yWMGL8VRFZmDgbtDvaxtnaNXXDypRgUwR4jCenHJQYh+OgYuLXAa6UeXQNgAlydp4GTxxz1NklDlUf4V8+tLBtjB1p7K66rr9w/5cKiQgDVuPDAR2E/9EQu2dWeJ5pIC5Rmjvxy1q2Vr18LsRxP+brk/A3u1txKfqS0Xj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778676634; c=relaxed/simple;
	bh=0HeqxhJGOYF+tUKvBjF9hD7at8w7bdtbVZDS7no+5E0=;
	h=To:Subject:From:Message-Id:Date; b=A8P5MztlQryelHgqaau/A1Ej9p5E/yU+mlR00qKeSt+oV0MBWKSadaqv4Wuq27PpTgkRQPxCq6bkKPFoAVgqUklPJDsDhxZkkLY/5fJNFAG3VKriIvLiqZNlh46ywT5+oaV+8NAJEL54qjsqMOQS/CWvk+hhQJNAQB2Xk+Roy8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkIs2uaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkIs2uaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 113C9C2BCFB
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778676634;
	bh=0HeqxhJGOYF+tUKvBjF9hD7at8w7bdtbVZDS7no+5E0=;
	h=To:Subject:From:Date:From;
	b=mkIs2uaZxJJIu/yL4jmBXgNI2UlcemyW/O/3MO38CoKMdXOp3qLeHqdcvxWAFbFxl
	 jtAlI/llOC62ybX5xUB6dImpLd7PvX0ChuJZFPufri4fFc4X5SeUxtRp88WG7LF3aI
	 9TY1wuJ9B6qqn1/Cq3DlfoETssqI3/4cvbUg4nLg5QPV0UqLjNASMO5b0Y1qo2a6x1
	 NZfyY8US5uL5ySlmT0cOMkDETzUVI98yqAqb+WACLnfzLRgwGL+aMDS5VCLDOQxiQO
	 4ZBZQPf3TfOr4XNC49hciOeh13HRFHUaf+QzZg+7EcTi5FYKa3EiqBxADMTiHkPrkB
	 H9tLskoXcLkUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3CCD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867663368.7582.11654765955059272786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb40291ace91b8406db8fc1a38cba8ecc8887b2e4585b9d77a186df3b39f4afd
Date: Wed, 13 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778676633
