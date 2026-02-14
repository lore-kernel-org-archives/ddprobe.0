Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CC52FF143
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771091693; cv=none; b=EeVJBwv+CCSKLBHJkRzRTcnLcoAW4yTATnaT2VjqsL/xxB/QKPMG8Q8zgUT5OObRkwt6WIQsmoQAw0bswNo91dhPArrtkbiGBuli6j388Tl2UpDW9n74RtS3MunJUJfET1+aaKZTDaC8itWuZM5WSaHaUpPDv3uJD4XNFMaK0+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771091693; c=relaxed/simple;
	bh=pWremPqn0896T3MLWy6V01EbBO+PJjYnA0T1KC4YZ6U=;
	h=To:Subject:From:Message-Id:Date; b=tk37IQObjdseAMn1BnQ+08tWKfwqOLtxBruf0Ihw8gPjN0u3qw68JhjMG1A/swEF31eA5PepEJnv+zvwTBee0d1Xp2LT5fjyAaAn3hEGmOsRmjMeHo2GX2s+UgMhGrQpvbr2WFe0VX7E0kEJpv0gbWJBk9kZ6PXVYHGw14qcpY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLz1jNr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLz1jNr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ADCC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771091693;
	bh=pWremPqn0896T3MLWy6V01EbBO+PJjYnA0T1KC4YZ6U=;
	h=To:Subject:From:Date:From;
	b=qLz1jNr4FuskKdD1AOrHjOcJAXeWZm4/vCEjY6XZUTDYPlmqPuJk1/ClrqpmGGKzf
	 VlxFXojUIY9Pm1bC7ni4iy1cWCi4wejz9FyRp2T7wLFjXxJdASLt27wcdJmaFmDy62
	 x9wZRqEzplgZ6M9hHiEgqtjDSpjlm/9PTN1TQFiBnQFR9MZkRSjna/p5jQEpM80Xua
	 yhYcHmsLn+xrHXlEDzrN0KOmpBybrQmSyyq8WeHAlpKOBtN0mvhz6Rl6vR36rR/XI5
	 CluxRVopYRMtWCMvsMSILoeah1QpZ6SSlWLnYtzQxnRcXZL7dfxBEyCKLa8PQHkVml
	 FgmJhDZ5Fhkqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9415CEF584E
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109169359.3820.18022233657590107620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10cbb69de23e2c3233f35cf4838dfb884e57fb557027566a30fe87f95425804
Date: Sat, 14 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771091693
