Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED46C1757A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zz9YUSf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA15C43390
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705327696;
	bh=SZk3PGHz1mATgTBo0fBuC5V2Q3VRv7IYSPTjVXj0c78=;
	h=To:Subject:From:Date:From;
	b=Zz9YUSf780PyhdxHKtBbDfwejvZin1Gb6NCvoOcOSUWmQ9zrM1eXU4qOjPJ6TF4an
	 nyqdO9fPKFBC/gbCxt3qQk4tk7rrLVLTLp7dU6J5TkTqlr7GWziq1keLfWY6zyQogL
	 tuFsqNodzwbbXVNdyYoI4fcQjGebeFOxutXYZLQxu3uOs1W/tS41R2DPOi5xiUI6GA
	 XxRdE1b/4Ohfk6LjhxOzcBCf6C0C5h5U0H4Q8x5CzWSPJVvuQ0ZthDDrui6d6wuNg2
	 hTFzW2Nim5FUQyFBPq+Rlkk+zefYgNTGG1SN/uksJFXYZE986ToJJJ0GifM8oVIhzP
	 j2N5cgWpE69mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E4CEC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170532769644.22717.13203064164601046997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5eedbdb6e619c855f5b3b899c1abc80ce9576bfed01499db23782deae540ac9
Date: Mon, 15 Jan 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705327696
