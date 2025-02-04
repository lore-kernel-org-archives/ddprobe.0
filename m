Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B56D3232
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738685754; cv=none; b=BXNENxeEbpcxwzMtjCmqCPco9jEWqE0e/f5ETUdrecFtYqCetU+5ffJzKx2aq70QElMFeqT3uSzC7s+ORT5Ai2FdbrC00J+BVV1m1sRdoP2wObbjr4sEZYantE+XJUfCjBjUjxReFqRdcnfnbeFkIrJGM6CKnfcvsshiYc5JanY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738685754; c=relaxed/simple;
	bh=XiW0VLed9ecnAYqPp7Wz5G/wGnUpnzXVDtlo/g8ZyyA=;
	h=To:Subject:From:Message-Id:Date; b=RelkBy+OqQJQdX2tzjTTdAoMmGaCmYcXEa7mCTNSxAiwAAKS5BNxQalSm1het3LdOGPa+oDyTu2fTl5EIdp17njqCqAWNbvzRfZJy2hHoDSG8dRH3qFZScpi0BoGCMN/in8p/q7YrnRwzLjMeMOaFrmMdIyVbVJ/m6igE3SAt7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbJE9WfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbJE9WfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2658C4CEE2
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738685753;
	bh=XiW0VLed9ecnAYqPp7Wz5G/wGnUpnzXVDtlo/g8ZyyA=;
	h=To:Subject:From:Date:From;
	b=hbJE9WfSap3Z77kuShusCNLrgOR20oC2mrIIL6kE7tI6GBeThV3Xd3k70xAmrlCQR
	 3dgDQDK++LXslaICsDJTXJXzO87KNZQL9swLcnE/d6zOPb3Hs/KqwLwaqA0C5k5uPs
	 hoYM2eBOKnd6kR6HaFqj/jxFFexy4ugnZr1m5brBanyS5w/8xcx/hcUVkKe0LCQKpq
	 VHexrx5mttWrPW0R7GzIa3HRuTkLFhL185d3r2oFHpKs+c+IFBcv3lDejTwrJdV6Sz
	 RNA7DF5hFkUN7F4KkXlntuNbQhGCbPxydX/yjich8RvAL/9dw+RHBkirT5Ok+BnqRG
	 ShNhca23KjWdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AFCC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173868575364.12053.14255653382626439896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fa881d7efd43ba6b64e0fec9d04ae38562770cad30627578ae47cfc244f06b
Date: Tue, 04 Feb 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738685753
