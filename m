Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0D024336D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747131594; cv=none; b=e9XxOMswFGs3AHyyvIo48FeQYlJw+VEu0Ynh93MzCOFK8P+Ty7171P8lelzQcEht6FZ7ZmqxAW1zoSo0t6kq0KvqZsLM1FRIF0+U79DFSahspAOWA7Rcz+IcW5wh0/MLxOrMMwGmECOrlKHjT3M39nM71FTY15pGm+MgqkYU68s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747131594; c=relaxed/simple;
	bh=/fPc//RpO5rWpQ+KA1RhCPzWbpBC0DjErmq9VejmxgY=;
	h=To:Subject:From:Message-Id:Date; b=RgbGU2e+7JM2TY7c4xkMRJk04ja6nHDAa5yRfaB5jHo7hH5stWXcHWwk1hVukXl94toCuPzQ9VUAI4pxTMDBO1nMf73H53EgdKuO8+F26yFJt3anL8U2Wf+KrLSjMCjhOfaqsrMMUXzsn2jNsjwUm3qeeRrLr/JhvYiVqjlVZBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/Bdl03E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/Bdl03E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99DC9C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747131593;
	bh=/fPc//RpO5rWpQ+KA1RhCPzWbpBC0DjErmq9VejmxgY=;
	h=To:Subject:From:Date:From;
	b=Z/Bdl03EUksJYUh25Bh27qPtbw3ZNP57JsG24u9L0v9eXq59RKE07ystOQ3mj3tKX
	 Wqpz9XAPlqqyKFfvSYDevpy6vxmuQUBL53IT31uC0oiLKSKpuzTm3RZYh/xxXa88VK
	 HybiACfoT9MFYboWzQAk4lxRhOcM7sf+lP+ozlvN5/gRTHG/jTKzF5v3JLDBhjYc8u
	 j9P8vnNK8dUcgn+/5xtqFNSY5ia35xSo+gGgnVq4jCg7SMwVhw4gKwSbxB/sgnfkIE
	 RUAfFMYuoERB9vcvAU+hMYhm7Kb0qX4pZkMhCVOYsYk5bQN0HJQx0y5Um2qiJ+6Zjs
	 B5RpxTOeYYJJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F2C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713159357.4840.1028548600392784781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153622f6a215549c91ccd2fd1880e6b4a0d8fd3dc4c824660dc1d2ab419aaabb
Date: Tue, 13 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747131593
