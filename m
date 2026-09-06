Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9968323645D
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788656434; cv=none; b=iKWswii8bwdqmKRjGmpUoNNA/3D3MFJGw6Jik49NBDmyG0VRr9BaWJM8NFaf0OhClVuXN6qDc1jzxf05HzY9elTNEa0iEg1nacx7rgMRrVyafTzxScf5B5+jSWNtBIaotBgkLVNCZ/QGIo3i2dBT75K9Zg09wvEWav4JlXcZWoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788656434; c=relaxed/simple;
	bh=jnmYeAt9sZ2TO0F9KBkEDZVlTw7VT/aPJ6YXIp/lXMU=;
	h=To:Subject:From:Message-Id:Date; b=XHJqT7cTk3K6+zalAN9UgWWTVDxnvTxqBrpOfrfKWBLgTICloTQDb6TEjY+xMFb7DQ0f7Um/C6bvGMxsSiqqR857/GFmxUC/WnENsK6nr6xaO1RyXu2XKEVcONyJEoYueL/8GieTixCkmtHs29xly3yLfqM+RMdBYSDQ0dOckiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5weBsNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5weBsNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD57FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788656433;
	bh=jnmYeAt9sZ2TO0F9KBkEDZVlTw7VT/aPJ6YXIp/lXMU=;
	h=To:Subject:From:Date:From;
	b=s5weBsNLE7FCdgWigiRjTk4Eg2KytfXLmOUiZ7S/XlJlSiXBboeGlpovzcUmnfjOx
	 w+YeotqHsadzC/ClmHy6t4+MSc66J2avLSV8RGQUScvLdDmY912RNcLOz2S42gLSqq
	 f/lMuh9SjX0YFZSKSoBxaPEbS/ulrg+3iJu0ezqEp6hEOaml3wyiMbUZo3PGiDpkHA
	 nO4zdupz+FQe8S2xxTtZWL1GxEbpIG/mvvkLLh/F5UkQOtiVTok5IFFONwp1DKM6PY
	 plH9lI6QG1RnBfmMb/TIxT1aODuhkVFgBpLNnQPff/oFPdN8COqVIVJRhy2/m2+M7E
	 Ko9I/L/sA3ODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BC3C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865643370.12221.9107133830334690161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4716797cf62f7b602c97bae418111ef322e39e34bed4fff85425098ec31b4337
Date: Sun, 06 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788656433
