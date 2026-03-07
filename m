Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D513D1A9F93
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772893493; cv=none; b=Zeg+v9aDKRDdUSciO9mHufjxiYOcxziBMBNLShxa+JhhTUws0leZu1wyWiqUVNhhITzLtNwUvtgz4YiyuAYIGBQTsDSbJXDtdvifBp3OEKcRNiSPTX1RHNjpMpYEl51Zb86OOaLOcDIlr0aq0PfwM8yAZs9Mv3Q/k3kPdSzQkds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772893493; c=relaxed/simple;
	bh=kZvSl9ZnrUVZvRcTJdmLog5418ZfRcONCD7IZSefR2A=;
	h=To:Subject:From:Message-Id:Date; b=CFgRIe77z+5XJpBJhw2Zx5t6Bj+OOSc8SFytFiwEC7Lfh0VZMxS431kk/tOGfwplcRqyNdoGrs9AhQ1/lAhs8X/MGDr0QCQs8Lbxcw4ndcZm9lGSIkaYhkawxZ97PCnHWYfF2CYs48WhIwavs+4VH6/yfEDFRJKE23PCbsSjCKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LunZXPd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LunZXPd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF400C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772893493;
	bh=kZvSl9ZnrUVZvRcTJdmLog5418ZfRcONCD7IZSefR2A=;
	h=To:Subject:From:Date:From;
	b=LunZXPd8oz0Adsjakec+4n66cE6IpgG9pPPtRZzmpCoTw907BAfbu6thpYavr61kJ
	 DW/YDEaUezrJU7SQXSsXyhcDJWYGMxOtI6UK4hVac8qu5UbYZhM+JeDhIYeg2039wS
	 sqrzunr2AGLZz6D/biNQcOSO8ZXYpYrxBN3maslvMPnB2gKgEMtT23II5BYsRmIPfZ
	 c+yK92ToXF/Bg6nfPaEMnqKx16tOrJ9qbj7Rk2Bxpw/7s15DyK9C3Qvp7xKsoUzdsb
	 goYBRNTuUdDTXIhi/qv/PzE1GBkXyHAIjchtK/4X8FR5/DHIdpAdupzD6IHD5FoJLX
	 JX/n7QzXkGcCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F7FC9EFF
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289349359.9965.9189981947010816250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7923191f0c7417c08da01b19fa49d826189f5adf219a5f1d4606bfafbedde36f
Date: Sat, 07 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772893493
