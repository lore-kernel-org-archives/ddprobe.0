Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0862222B2
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771382694; cv=none; b=h7P259gtEKlk/sNosENjXxr914MGufDBLlSyX2FcaLJQZmwRTNeBtvEms5wR8yikrr/Qlva/FTubMmCKZb69zJ7wFr8wzgECTav4jfHWC7MJnexJBrjV+nvJJDPo2dY4emQBw+9mm8thgxuF3qHLR7LHhymaOZFkAVjLDJdZOzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771382694; c=relaxed/simple;
	bh=BkCZEGjQBp6JdkjYozlKT4aO0oMrz/mbfb/Hy4t6jmw=;
	h=To:Subject:From:Message-Id:Date; b=MLJXW8f84hTF7mLxMDqpUDDjG3mg2oRrId1dN+fkgb30qRnnpP3GlyAov2zBadZQ+NyhHLCIH45/AY6+SnDfslaQa/3HfhSA44K6opowmGQuxqdnGezdKiNYnL1tq4NISpAX2MPdtCiK8AdTHTZq0ehYnHufIVhSHooz2wrYWLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBHpYhK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBHpYhK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F09C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771382693;
	bh=BkCZEGjQBp6JdkjYozlKT4aO0oMrz/mbfb/Hy4t6jmw=;
	h=To:Subject:From:Date:From;
	b=XBHpYhK4WtqtEfPk+BPxbhN22fSth3Hv10rj2ZnY1VjoApVWniFHZylXCWJ3IiuVv
	 nyrpy8HCfpK0BOphnFLi+oYEoeU/bsABAgDo694IzCPt0SBhU6fLUg3S44+dG7YKtc
	 cuMzbQr0g6GtfIIxyg0sJjvI0kfIzNk1e8I25bU7yFvR/fTatmim3sqcnlj6HCM49q
	 7vvCQRukN0eZJC4Ld2A1pErFDI2GD9Vl4guK5UvhyqRaPHOfpcM43j5UAXTwxZTrfZ
	 QgQb1W9ef+auXJwSMp+jp5Ex/KrV0a9qwThVqvlvrqCXwSl91xqSpfWzJB9muVPK6C
	 GTurQwDsORC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23C9E9A041
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138269360.27435.7068178824331881143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed90f64b8b0378511489d673a9f5ddf815d38177dfa9b131716d320a28f1876
Date: Wed, 18 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771382693
