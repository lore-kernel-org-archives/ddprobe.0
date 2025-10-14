Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AAC270568
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760471994; cv=none; b=OJqntUyTzd53gGROQicIbMVx/+M5IAWnx0iAq9xVnZEfK1sitSJFBQHntqyCQJpKIQRW2tFtnGab9/gP41sx9tstE0WoDuShx5iSYlYqlnFlPtLGKypj7FUE3dHgVjyvHZ99hWNlsrJ+uXaIsj44zSSg2cIbfnhrccl3n/5uUuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760471994; c=relaxed/simple;
	bh=p96On7H/CY5Kfpn8miu0ggiJuSnz5VXPMiKcNkHcB34=;
	h=To:Subject:From:Message-Id:Date; b=WWlNgAS3zBgL3Nmqdo7uRK6NZghqifWiTVFQaAH3R97YEomEGCSDRQ8ia4J05n7eJy/b+ZkLHYqTSzEiZv9074SEv6TluBHfJLkx7AttAfeizJZul1d+eRUxYfQmozPsEVZxiJsJC5f8J/0XBx1khWolVWiRsMxmamkHT31LIj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5Yif5uv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5Yif5uv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38D9C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760471993;
	bh=p96On7H/CY5Kfpn8miu0ggiJuSnz5VXPMiKcNkHcB34=;
	h=To:Subject:From:Date:From;
	b=h5Yif5uvqtOYkvOYKoaldv+tAbBDsroGxNDkxmb3zFGIhtNulpj8o7VWot1WdGLA5
	 NCdtlPkpxtrjjyWWqvQWU3nMfY6OY2NxO24/BrzMBgQtPtk6n2I0X05+5kw0uXPykl
	 Va+Zrw8lREQcRYfFEzaX4X/4rsvGSunGtS9fHd89GM5tX9jviwGvFNEmI5xLrOzQPL
	 qM9n32GN8hsAek/O7mMVEeM2zOlkv4yM8En8QyEgyHRvLH1RozP7/CqfTTaJCK81Pq
	 OedZ832l6yV1NbFpNlRbKTlN7wYwPt+Lr0zUnnlBcPI8EIfSK8iyAEynYR3ysfB/lA
	 7q9z9ZjNJrqeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF97CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047199358.19342.15821825510440242529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4dbeff5acb05a9fa537915e8c91a7f76366607f616eb2c0b6482186dcc6dcb
Date: Tue, 14 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760471993
