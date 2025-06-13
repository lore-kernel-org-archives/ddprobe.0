Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2936218BC0C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749814794; cv=none; b=l/zUJ2BmL+Br27wMDjVY6MwzmqPKjtD8Q+iqjKhQQR+mRdoEspahE2nPTrf5mleJWOZp4MEnumilNWKB5rXmKj3nP4iZsfZRZJFy495Pi/66XDbLn/Lf/EaYxqa6KcpQQlJ04v6siF7jy8qfnADZtpuGnT67FND2kqIn9qCNbWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749814794; c=relaxed/simple;
	bh=eMH3z778HwZjdTygVD63euHMIVv6oZGEoH/CtbPAi/k=;
	h=To:Subject:From:Message-Id:Date; b=lf68FkI1QrwjaRv++9SUu1MZb56F3GXMzlB7kU1UqBFN/xL7pnMnv5oa2Xx7ySr88ET1IbBVnrfz4v4KLg64AtWYycwXc4lbv/io5ZvWpSRlT5Wv/9PK2S8LNax06ogzcecX+Lp+9E8k0PLEDGutFEXNutbdHYBvHGcdnPCYoUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAZjQbHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAZjQbHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A345BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749814793;
	bh=eMH3z778HwZjdTygVD63euHMIVv6oZGEoH/CtbPAi/k=;
	h=To:Subject:From:Date:From;
	b=oAZjQbHBQhTT6NpclAIJxdfTtPR5nGGFgW3634gkdyAQGBqLXb/m9nS3BmZEjo7/S
	 uLTSejCT3OadDPz9r1JvrDSwhYPTQOQUZuvCJdf/+pAWc7ilkovTNDY23Pqqxncup+
	 +mWdY5e0jZd+KBQ2icFkAoZ/gZGaLpotaarR74ZjG0nVkheSLFlgx+Fo/sBw9hBCAq
	 5Ul2VgE7XcZ66VVdrJB5r8aR2fDTUdb1EP+yXigZq909OrtHtt/FivM8+h/7XUqk3c
	 6aYBXAwnon2K5f5CCQZGPEGQDU6b0MFELKVW66rLU9rRpoS0Ve4n1pzNXWy1W7wdnM
	 7DsDJMb7FaBjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D8C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981479358.19059.9629301793669956748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cf67c2b317cef47117e911546f752ad5d46e0afde4eafb9c347d515cd3f86b
Date: Fri, 13 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749814793
