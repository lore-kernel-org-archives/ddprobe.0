Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AE6235074
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759092594; cv=none; b=tOvSdh7i3Kv4MuO6u9KtuvZJBMuNbVFsr/LX3r7l67KmDelK2E3/VrZCte0UrdADlcPaN0o/gj3f5G6js0uLD5qVLPSRccj9mHya9BpEFjeki9j6v4xGBD3smsJCLidTUu4K+mvowRFDjOKHcGnNBJu3jkfnqhq6IYzcRsSYzvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759092594; c=relaxed/simple;
	bh=bRxPlckNR71oXJIvIhNNmFib4pKrFcfSymLj8Cr8xsE=;
	h=To:Subject:From:Message-Id:Date; b=ZgPYEQIrnrpsrO6C/2y1El67W344MxMfBnK9z0YbBwxmHCb/8oY3Pay8pt/SPFdegzKwTHnU5b8xJIvjrZQJ8vn6Qxq+rOahKLUg1xuRrkxnnX3cQzAmnCsQwm2799wm174tgTNsssL9Q5S+UJurzTRIAw6+rCw9DvfmTd+NSNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW88t9qS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW88t9qS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21FDC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759092593;
	bh=bRxPlckNR71oXJIvIhNNmFib4pKrFcfSymLj8Cr8xsE=;
	h=To:Subject:From:Date:From;
	b=DW88t9qSNOg3NLAGS89OIvZunCcgc/cKZnq7jWcWMGCAtyoBY8yuOgFk49/C+64zo
	 0jF83UMjhFA6NNm+iMEZ5tlVG7N8DPfdw3vbdvNXwZEqMz2uBOciQYoBDm4SPWJJ65
	 BovkSrIEeWSpYCDraTDX4G9pO10oGKiJv8MN+Luc1p3Ncuc+7jVOIAyOOmfr8R4Hnh
	 6VvetLqQEs+C3VgkNqPi8eOlp+G6kZtKzPOyUcP0ZCJ9Vps4oUNRKHqiU9tTk2eOOw
	 2GpWuwW1A1UJmd4en7Un+Ax2va9g9z0iOPyhg6QiPlmzcw2rA/D1OVVZJxUsrSZbM8
	 SwqXyP7xWm8tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C13CCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909259361.32471.3484427818582205102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a490d86cd8f2ad5e0346a4b95e2900844c388677aaddbc6562268f232197896b
Date: Sun, 28 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759092593
