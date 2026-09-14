Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996C03A2E28
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789412434; cv=none; b=XcN2walpcbOArv/IyUu2ffWhRrzjvg3DXgI05I8WfE68g95YXcZa4unPGuvOq3DBrbpCh1w//2Fwdpcfo5I5/YCEm9YP5dWD2wSLeh7cFmroAhDmkGP9HqGN0cPHLWYgRi9VXM7Ayy1Aa5CzeVt6PyPOJN4PRGmY3IhQKKmQGJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789412434; c=relaxed/simple;
	bh=QhxXzNm+rAIFoTT+8RDOsPQnaxWAwbpfTCMYZEsk9oM=;
	h=To:Subject:From:Message-Id:Date; b=XW9/aVy7wInRndHeNZ1zxAHCsvpvT4zyNaOiE31ZapsJsQR6Hb0wLUi0vc9FExsPhtlUeDyXsubkIVFYE+m7OjRkLLgqFhQECZsmyFRLKk5V1b9mGEAgfRo6ycCRiPiMaxW181zAO/joCWU5xxhH6wFHud2w3AOld0oIM9JILN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXxqvUw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXxqvUw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86F0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789412433;
	bh=QhxXzNm+rAIFoTT+8RDOsPQnaxWAwbpfTCMYZEsk9oM=;
	h=To:Subject:From:Date:From;
	b=LXxqvUw6eUXjReEVu/x0rKdMX6vBICT5Z8Imjlt2Em/4OZRFOzKfWYfXGtZ4fuoxb
	 3uB0S3uzH2jLNDslyAE42r8bDmctHzC/Q5mPJiI+Tr3eS54jWFCYfzX5rl7jhBcvFn
	 m5EXt3ooB1LTCIjayv8KfhAXYSRipbURGGcPRhPIbpVszui5WbFYVQLrGakzkV8koj
	 ub7cprAfS7LQI0FUE+6hDGarhXDb2UZH4nNReV64LSX/pBd2zzl8SoSxnspGVJwKsj
	 38ZLFd+EkLoxsW0C0pSaQ/VX8JnnMDnTubyNGv/6/qImkjCkgnYYNp0ZHlKa16jnqV
	 RWlBm1d2nT/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3FBC88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941243370.16062.15213031978242665529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8600fa0f32790d807a338123278fa209b39868eea011a24f913f6946440bf60
Date: Mon, 14 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789412433
