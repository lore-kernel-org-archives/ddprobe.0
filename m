Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEBB19FA93
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747351194; cv=none; b=U20NNiLSxeVQTSsqYFEuia0ERm91ZPTJT5ZWCVM8isgUw+5qWliMFBw+BpMfCBPTo/niTR7c9ty9fbMGJo/qLveRhzfStmU3a4W4JAJOYkmUOoENWRnMOzXv9bUfnJZiamnt8woD9O/sxoJzcbYugU3YdzS3rK3W/m86aIjjZOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747351194; c=relaxed/simple;
	bh=8TnMVwBcW2yAGeK28yLukqGSTiidwCvz+sWG3EJ+YkU=;
	h=To:Subject:From:Message-Id:Date; b=RzdXGp9+7pr6rfP+IyhZo6VVAFezQO6uOLQ5qQ/+nxsVsOhZJZi2DLFhEWTk0Cx+AYvHjZxnDkrAN8K3x9Cinw+G7z7dxL9UFCPktjuhme9k3rVHWSb95hctw6L7meqmvvileyXtLKN+b8vs+rNY5lbNvgvlveiXy/xBFzn+I9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sctHNX8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sctHNX8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D03C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747351193;
	bh=8TnMVwBcW2yAGeK28yLukqGSTiidwCvz+sWG3EJ+YkU=;
	h=To:Subject:From:Date:From;
	b=sctHNX8Tvh2sBBLh/nWiPDAf8JFoSauTi6bdqVgwOQi7PCbadkr8YvJVGpC3+N+ec
	 JOVX9nv7x35uYMqZhThDqCUOui/UwnqrFSqqyKX8JBnPAZEzfYchvOVCgBra3zY8+i
	 srzWbXcQCTyZrYUgnWvRhWMiuL4n76Wu1f3WBRmasWoZm7WfpuIRSKBcHMlJwBM14v
	 r7CpiTnYlwMKfO4+ZyAzuhCEa6DUerL7V+jTW95/jnE2DbbAImP93aj3gDgMVjDr7Z
	 rQ7NqUzsM+MdfKZPuHul4dj51i96FAGC8iOWRSWcZzLGU24Hy2D59NXViFRBwKtChF
	 tbbxOOynLGWbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A85C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735119358.2768.6656428310638447994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758551cf50298e349019ac9583fd85a441aa7c55bb0937736edde37da654e78c
Date: Thu, 15 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747351193
