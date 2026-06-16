Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4645237880B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781639794; cv=none; b=WyLJcsL310sui/p7P1TXlyFW2x4BpYudb4GrTQuOLzq0nB9gsN5nNMplWUgqTre2nBMgoEviHQtcvzKLsZ/XCjbWJ42fyF2us3+l/o6/RI74ijO1WfPwCZA0EHv5387krcBv1u7svbKHoc2ExJ9H0UI8ONbj0krMag+eHpx6+Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781639794; c=relaxed/simple;
	bh=8K8W+Qz2AUN5GhAk/UgcTkLVFrQv+kKMkHvBtH7nlkU=;
	h=To:Subject:From:Message-Id:Date; b=mAmMVKvS99Q/DUoTn16mgT397BXYKCz62u6flNHmnocNx/KRKF4Al3G7kD9GBLB6yDZe5MbM46/a3W28Ps1bTJ4vkKnyEJa64mGwlSEoOjYSxZDPXNpdQpWiZwcepcd4WeseF+Bgct13HUUVboHgWS10A4i7dRmwGc/Wd+Iu6Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAmT+Xwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAmT+Xwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD326C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781639793;
	bh=8K8W+Qz2AUN5GhAk/UgcTkLVFrQv+kKMkHvBtH7nlkU=;
	h=To:Subject:From:Date:From;
	b=FAmT+XwgeMyJxl3b7L6BhSQatZ4kWPyweT6acqwzph6dIH7GEQ9BjN/3F13MTzLDu
	 DwCgwJMnZNgMBcrWKpGyd9PImnGX4d8K5A8YhBLmQlk/NB7wJp+ypQSyJv3lQKRn5F
	 n61Ck1WC9dpT0lOUaqALAkVfHOo6vJb4GdbQ2qf+0Z9+wd0o5wIn5eFQK7e86l4Xbz
	 tvJ7sIiBNsYpDfQQDwiXL44FvHCJyZOI5wxbYXaEOx+88tkfr2jzCHULmZfGOEIVpe
	 vcZRWJc120kTNV8kfbQnvm8LAwPaI7cYypLyUneMoGRk6+drM+FmmOGDTQuD7OIlTr
	 9KeNs+fnYC7Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35A8CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163979369.16296.12778788173848170327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e62f422febdaf01f77977d1b016d7ed16a6546f214ce10ce44760a74183a358
Date: Tue, 16 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781639793
