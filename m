Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3182A279DA1
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750692594; cv=none; b=pHOit7c8uieb8yxQUgI4k2CAS06qg/KUZhrp9rEuwKoEs/yIrDUqo/a9nS1qppdypN8oB+W93b0F5KIOQKbgnM2/mntLhQgxzhMle41ncfFuprLjjv04xy+o1+Lz/qGF+frRdBhY0q5WwcgUCGAZA8iBrC7IIwycB4KI5MAUipM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750692594; c=relaxed/simple;
	bh=4rdCxW/Y0USuygDK1kMF8nRIf6q/c+7rI3WncbzVNSY=;
	h=To:Subject:From:Message-Id:Date; b=SMSi7pIJhBbFyb/3KPPLu2ikIq2xyFOEodvhOmVXiThLhRp+3+kXyBo+JpCBM7Zul9l/MON4DOGJNz77YGdbljaTVRuVhkYFdqfpuynq3qbf1Wj+QAKm2lABxdE2qItMrDyQmJVWY8YsOUfhnDPTfHpLBGjf2tmj5mttfNu7oHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkMH8Tl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkMH8Tl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9A9C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750692593;
	bh=4rdCxW/Y0USuygDK1kMF8nRIf6q/c+7rI3WncbzVNSY=;
	h=To:Subject:From:Date:From;
	b=OkMH8Tl1H9ABRSKNc69hdRTHpGq3dyWdnL2EymKtxnGSNgjINBcMBx6t19Nh5K050
	 mfp1aQ/NPv/nKxBCHVXuFcDwsFS542v/4nKCnP0MkrzMWxo6rdeioeI+TKPfQuCHCQ
	 n2fYgoT53V5qnp7rpBwW4PDm3AiEwoOwoIIJ/8aBhomd+5BfXrF2UW71gWMaxToC6N
	 7fC72SwGrc21GlX4blmQkRwoBSktAd9uSqwo9z0rBca1Xh1O7KqIdc3LZwqxyzJN4a
	 GlBw8NUzoOW3IqRpYxS1nzM+o+z5oxpEtaGRo4+nhBWZpXjhd00tzi3AIxIOmBCpLR
	 utmjox3TMtJ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F066C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069259357.14392.18390642261713027687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3c2dd744768250eafa3fd97623a9fd9835368bcc8706e4029fee5e3d4cbefd
Date: Mon, 23 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750692593
