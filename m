Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9525C2D6
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712734697; cv=none; b=J9LULtnEv+QivzMdmTtYuhXNYiDSvieuAH+y5GJ07CwRaiXJ6djUXKUu74Hcz6J08N6MJmdKKXPjpORL+xvwcYGhj/sI5r135dKxPNCy0i1Fir6gG5j4YjX1l62NyP8RMB1KjUlNjKnxt8WuwypJt0I5ENWPirl8YctyW6vc4m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712734697; c=relaxed/simple;
	bh=OEFRjOlLSEVtdFoVmxIlCduPHdEiTdzPxxiE4/XgFZE=;
	h=To:Subject:From:Message-Id:Date; b=ZYAtKUTfur3Qz5SY4iHukAtVuyob3/4qLvHHkeM2EfhDe8NcVb8uqpqd9WcxCKGNnOGCOccjWCWGDlowc41m42tGKs9RBY2aLqEB+gqWT6OW+lMSstGxDgMWgdIHA67nFzyasQHGf5hsTRILcLKeGs3HuZT0pBJ6qC1SnkCn/PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMf2Kf3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMf2Kf3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DDF6C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712734696;
	bh=OEFRjOlLSEVtdFoVmxIlCduPHdEiTdzPxxiE4/XgFZE=;
	h=To:Subject:From:Date:From;
	b=kMf2Kf3aN5Xavy10XMXvUhzo/HtWTFLI4tmXgL+TKtQz4EcSljFh5wnqungn4MyCk
	 A2LPHvY//yXVRTZsZVFhhPXxCtHhk3gFDKgk32r7b11qhGksf7htWk26DeKVMygpMT
	 RTH0CrmC0pUE6EGuwtca8p72L5D3zW+8pbMRXYqu7ZnPXb9hTaiw02+35FELHGu8DH
	 w/qjVMad+wM7bVfDzzPYB+nvE9831DzrD8iDPy19mZ4+d51ltYx8efNqLJ4V1C4PRa
	 692EDIhx4qWu5mxI4OOFUAeYZERTvuAAmki+PGMFR+m/cxgrBiVOzw/giop6QKtJs3
	 hZsRyTjBQPVNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6414ECD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171273469639.21821.2826828470752791326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bedada7ded9361fa72e00e9411781b791add32f17130d1436848f261acf81198
Date: Wed, 10 Apr 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712734696
