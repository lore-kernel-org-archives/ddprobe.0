Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A8C4A1A
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756619394; cv=none; b=C+ZtaGhaxUWZDA3dAAHP+GP6TKvCB3PvRl8ZTvd7SOqmCyhDBtI8U8KDlYrP80QTdjXYgwv67o34CtkfnLLSY9cygKtJ46H1W6dVu9S4apKwuiKBMcJrtvCn5APn1Zlvff8L2n3K899YmNrw6O3Ua9Ujh1XjOPeFYx+4Z0bJU+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756619394; c=relaxed/simple;
	bh=ZVKaP9uXbonw8fFGRT1RcSrfzW4Lh0Xr4jKZ8fpXKXQ=;
	h=To:Subject:From:Message-Id:Date; b=XfFIoTBQ3jSb7Ge4xqL4E21XMCyi9L5jWbbF1022l8fH/wz9w4G/dvzgIJPYOve68QfVTf3Hmq4L08T++S1OOFLNm9LCpLm5Gs+ADl5Q1m1U7v6IGIfvm1eVsN2+X1pMFlq10jLHveEo5g2Y2xm++YNQLm4vQmjulv2x1aPj+B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgZ3XxYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgZ3XxYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AFCC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756619393;
	bh=ZVKaP9uXbonw8fFGRT1RcSrfzW4Lh0Xr4jKZ8fpXKXQ=;
	h=To:Subject:From:Date:From;
	b=FgZ3XxYj2aBO6jRK46qXYLrOAPs2elqDr2Y2gCA8NgnVfPfV5xxRfJcLutELLZGsJ
	 w146r0Tpb6yOJhSqWBipkzl3Owbl0JbzvnQrquEC8D7bRGYr+MMmD90hoC+SkS4rO4
	 tsOHajW3cvKn+YDfCiSVZWc5qMVfL3pYj+AGIIOfExBsOVs6ZCVALxJFRCBknl3WK7
	 T1cMSDio5docVFjlUXMieyvkrOIULFZo6kfu5mPeZjRxWSG0CjBCUqcfBuR6AQ5kW0
	 nAREE3spD6vQR+79k9YqeGiEHJsp/isZiUaagxMF9DC/IFmECTscnYeyEmlHwvG8pX
	 /folQSuVxPtaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D6CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661939357.8014.10540023586658047833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e23d67780b56425b646f9e698d21844a1072860b956fe79788cd03e2ecae36
Date: Sun, 31 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756619393
