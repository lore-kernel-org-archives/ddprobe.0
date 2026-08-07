Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F7F4B04B3
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786074034; cv=none; b=fhr7YPpjWO8x56wHvFswYvINCTRtKqm8kCkP+9lMAb5a2uNoOVRXgl5EBiNa5+sdpN9dDweiFpZQe/cJNyRLDpWk/DUALUsN2k/+PzUvaSjnZT7fPJ8i2pi/gr9YXZpe6yrTxGq2P/J/Pgbm72QEwMXs7S2wdup8qaf1Q2CKZLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786074034; c=relaxed/simple;
	bh=kMgxOzaO2urK8jwx66y9iQ4Jqbl08ChqVJNDnv56WTo=;
	h=To:Subject:From:Message-Id:Date; b=Z9WVDX25khEJDO6UpIp0pz6T371MDu1dBXJ7uIuq9LzCIO0QzQGsT4y2RVIcTxOTbnKvlJQdtG3OXfMPJHk4d9U+G7Jzr7NzlCRtQQanDnGmggDFDKOLKSjbed2Kemqqg05Zct2KXl0ndtk1hXlqGUTohZ5I2Vb1wZHWsv1fBx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DH3Jn59w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DH3Jn59w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DE9C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786074033;
	bh=kMgxOzaO2urK8jwx66y9iQ4Jqbl08ChqVJNDnv56WTo=;
	h=To:Subject:From:Date:From;
	b=DH3Jn59wOhtB7ntwRn1Vf/9X3gx8BGAD5sb5YgfM6EQ3R7rBsvlIAOzcEt5DkyDje
	 FoxV9Ein7RFprZmE0MnlAAZAV9TRCC3Ch/otjGw1v+z54hupmsPWS4dc/RmyBY1WSF
	 VodXXFmE0wI/1YBV64Ra6Ds2T9dgaaPwRq3Uor60txKCtUGUZn2hx57Huvr61LsWAd
	 wli/Bo+HDCuDaDuBjs1TddHTS02SOi+lmwpSHM721FApm8RQdlumzz9JdrNkHlnFYW
	 xyjvORoAj2pHUT/KWzL8K5ogNkcRW8qSEHzM4Q7N12zgdnG0MvsHA8zTLhQYHKtbZv
	 Jvl38WYVBm3ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07F4C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607403368.25321.13502737122856276394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8034caec71615b18bae4e71d27bf14617ba18bd4d25476a13e0b2445b2287ad8
Date: Fri, 07 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786074033
