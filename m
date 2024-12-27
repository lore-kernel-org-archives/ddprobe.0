Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF6C1F2C45
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735322754; cv=none; b=adxqmw5MQ8EhfbrzFRIq4FCvAhBt7ktaiMeHWUbmw1w1tvFmmmUlO/EgBYo2XPYTw8uSbfVpTqTFqsjdD3NFL/dAfu6UlqhxZqLXp9DPFCOU/8HlgPI5RMUprv9qGqHRDRy5odUuQoEwFgUcsyJMXGesbZA9FbA11JoarR1S/yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735322754; c=relaxed/simple;
	bh=cry/WgzqHxA9+eABT7s/N+9L1JGmqanv1/KSfHZEEvc=;
	h=To:Subject:From:Message-Id:Date; b=eAbn/ibGlRkzIenwtvlqZmF8kOLvL/9Qz2eam3/LjmDuYrzlbHNiYUHqY0Dn66piHZv5zI90cTxCpmrO6EcVAZYguB+HEfxQkZV1Xk3zqZwH1+EMKat2EhnOa4R11zhcnnK7Sy4KKc3GGETTYF6Chk47356phcHzrkS+gX4eG/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTbA7rAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTbA7rAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7608C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735322753;
	bh=cry/WgzqHxA9+eABT7s/N+9L1JGmqanv1/KSfHZEEvc=;
	h=To:Subject:From:Date:From;
	b=UTbA7rAzBKi/j9C+pTSfdLwsyJJURsGuyFnXKfp81scUKj5zMJY+wjrGsf5lzHNZD
	 rhgsrano/vVUxS3Oae47RfryxHdZFiD26XufKVFggl7F/Q7whRVEvCm2ea8IG2ZlfG
	 +YO6qo3wMr5eYpj/oJ1L2E83sC1mH/3hP6ByVYZ9rGdsMN1VFU65FXYfHIcv5tFk85
	 G7O0h84dMlN3bWMi/Y+aaSJtv1y44vpzP6wqO1fQQV+LiFmxBQ0/hPzTRGW0TgjIOf
	 3mWMQ/122IWWZwgNndxh7tTHzHeOmAMvvo2SSe3Je7odxvVPitOB1W5utBU7Bt+2v3
	 E6/vGCFAiIsQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAEAE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532275358.27945.560461452597509748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653dd52a44f252d72ad02531b179a94724fc26a5f2c65a24916d8739d9ad4a4d
Date: Fri, 27 Dec 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735322753
