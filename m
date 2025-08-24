Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171882367C5
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756072794; cv=none; b=YvwtICw+JLtVarwzwOyNFTlAsOzxUlK83sLsMkVVN3tkFGJzXQiY9sHXzhxWb73CbPbv2rY2MUFH9+u2j486g+MJt0xDkn1kXsaQ2viPM7CTvIv3Vh1s7HE6qr2VRDJfJlSWAW2ivuz9ontlkTVx/D+VhbK+pVXC/ZY0FiIzf5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756072794; c=relaxed/simple;
	bh=j3lVn0Via8tZwQOH8JY2gWuF2aeZ4tDJbJtIAd5aK/8=;
	h=To:Subject:From:Message-Id:Date; b=ZkoJIIdEmBFJ6teH39M6vBRq1J0aeTPMj8LZEUByekHjCUZYXgqQHN/Vew2lWnRei8WSed2tcIHscmYsF09lsH6C4zT94i34NRoB+RZ8qO0F9ij6NCssCH0meFYYynVe6GehyuxlBmvK8uTybI+10mmXO2VQDh+onymzdkJX9TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8IkIA7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8IkIA7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E06C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756072793;
	bh=j3lVn0Via8tZwQOH8JY2gWuF2aeZ4tDJbJtIAd5aK/8=;
	h=To:Subject:From:Date:From;
	b=d8IkIA7s7tml4px9UWGCJLZpZ6ZA9sDl+ow/O5hnS3lr6ol5y8tYEkN+nWVswUD8p
	 a2CldkLvN47K5wAWAIHR5UemxThQ7mzbUNIrU+himduk6EDH9GfLr+ZmE8Lulqy6II
	 VzISbYAFmZ/28mRgw3qBEIJNniEzxzloHB9podn+ktvsoeftg/rawOQr4Py83X0d6T
	 LErR6gtugRmE9oxQrCQ/XlG3lCifVaKqEkv3nF/CxHqOsLKRIYjRkXUQ000rUYVVKC
	 /kDwwOJxjeabB7KhdBX0HZ99Nqjqc/UJXpE2GCdDQrN1+vIm74ELs+7raBb1ygUrl6
	 QZAY6g2mZQ9ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C6CA0EED
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607279357.17619.15989869200157275350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea79b4a06ef0f00be6c38d563f24965dd118fe9c5ed00de634dae1faae404122
Date: Sun, 24 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756072793
