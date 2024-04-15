Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3305871B50
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 20:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713212963; cv=none; b=oYLHCqp/7cVSX9V3vF6YfA5Wl5tTlzsBtQ6fhCAPfUSwDfUhfH4AtNiisL+Wvc2SI9J6s2XDjzlWGbMU5Xpby3v39rl6cBT4x32diSfMnli1kQaXrAMIMIawbRRwNzUCLw+qOLNLiC6HY4HW43CD73f93asxCo1zYDbczmTvWeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713212963; c=relaxed/simple;
	bh=+TpYI5IPto72G31Uo4+ASd8ONsXNnALZi7Cw1nBpYvg=;
	h=To:Subject:From:Message-Id:Date; b=PlhExD4M0kZNvCXY9LWtZ+OFMig+lZXhP56oOQv1yScodjuZ19ZnO2Bza6h9/D0Lp0HeqAwC1c9NeNESwIOxT/hUN5q9YsXYiB06zXUExndZC18l4vPqIAD6XVtQ5d61VJG9hkr+4HZoCyFWDdKJ7Jemtlogd4ye4RVIbslS3nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/3MbeWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/3MbeWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6605C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 20:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713212962;
	bh=+TpYI5IPto72G31Uo4+ASd8ONsXNnALZi7Cw1nBpYvg=;
	h=To:Subject:From:Date:From;
	b=t/3MbeWP2D+BUudwb+kRFcdSy9JFUWEq4AE0b1fWnnE0jlO7+v4OJv/TDFeY6CFya
	 uKlK0uRkvUeFcXvyNQUo43/uM3G704ebzWV+tY9zyHQzAmiuRRQpv3F/qc136zrn0+
	 Bp5STAqEVRloWFkw09QQrJ+pcMgIjfbzFOb0/U6XzAcjdTyAEuggbPbMzIpyblSqf1
	 Eu2GzgnliNrF6Gw9Tre05XTjCHWRQnwesLxnXKQJWjKV25R2o0rZ/zm/pDriURvSa3
	 rw6jNDCs2xbb7sCdMcNU94s5sdCXGnSydA57Hcne5xaPTCt07u9bfwa6Keit3Frqqk
	 +RMOQI2ahF4Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AEBC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 20:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171321296275.32668.15655358374898735563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea5ed7ef3efb1aaa15f61ac5c9931d6331ad9a7c99253b5a4ab9da1c9fe1a60
Date: Mon, 15 Apr 2024 20:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713212962
