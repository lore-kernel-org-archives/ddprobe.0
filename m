Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A856281508
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746546594; cv=none; b=cTNsltoimLqT6ocdyn8p7igG3XY2DPPbdMfKQ9fLW1Hcmen0ojw/hcEIi3+NZZD85WRYGrVQYfeXTDw1L8wfwLfMOA8rXSd64v60QnFB2DCHvD6rDd1TsrB0CPM0B3+pS2/U1jj/sK5Qr2TeB5VbDljTFhVgW2qvI1fTGw931vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746546594; c=relaxed/simple;
	bh=UYYt1BN1Mh5SSC0osh0tR/aUn0FrpGN/qLjGIydJpv0=;
	h=To:Subject:From:Message-Id:Date; b=Lv1ovElk2GjQlNxWfNi0Wl15ZDHsLQKlKHo4dgrf6NtOaXxpR0JCVprQZ3lFgJ9B1KXUkppxd08pORcIt9nMJWdFaEJ9IYkLsKKohupheb1fUej/sHNpjwuQI6s3N5j8si3T8NzBk41fvdEPrQ2wOTcer89RVg4KW7EMTnO8P5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjgyhGCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjgyhGCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D53EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746546593;
	bh=UYYt1BN1Mh5SSC0osh0tR/aUn0FrpGN/qLjGIydJpv0=;
	h=To:Subject:From:Date:From;
	b=HjgyhGCYoNmVdoykZpRnGWI0GkXPBGu66QvqrhZFLUniBebbng309wmXu+EnunbTP
	 LD1r8evZiwkAcvjBbnwUF7hbnAL0IF5XC2mrptwIKMTXDHAeLGg5TyhWn4MXZm1wgD
	 fFMPVL+TFibgRfIjEk759OkqOLwH75a8NtuimWgOWSiMrMyeejMWdPm6jpc6rZZFFy
	 pKF/rdJkJjvAfcfBNtTs7RE5RCEzNUjEgL+VTE7nS2F04rnTWyXycfZf2/V7ARGb3w
	 d1XpR9isWPmD7/EKarLDpoCZXKbG9ike+2Ui8nazlzgkuNGSjDnxMXvVfbCr6aMQpl
	 6mkSRIKdUbcNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E521C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654659357.10423.14989823238444045268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d80ae083c778b973a99cd429c6cd418a9f84f0572fd0eed4b70e9c371c4159
Date: Tue, 06 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746546593
