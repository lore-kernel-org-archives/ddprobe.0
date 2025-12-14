Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C2D1ACEDF
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765729374; cv=none; b=NgKDFR1p7R00ty+mIfAIDDCY07xK8I8P4qVkc7kU3xVU+MWsMhPqAZhVckPGFQRjgoB1gAKDu8U70E+ah/9qiiee1Vkykk8RshjxOwVipDc6gZ95dEdUo45gH+GimamJJkvyS6uWLBtTY+QNmxkfcWMRq0VE2aZ/OmIwztWNHJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765729374; c=relaxed/simple;
	bh=YIXr7mSzMsMA2veLXf2THXHTyjtk3R+WrPqhzOicPeY=;
	h=To:Subject:From:Message-Id:Date; b=q/Q0TBXSVo7Hj+NrRK38bSHv0LYxv/skcrZSGEHGCk7EIvotAwtERmOJwS4WGCyYK3xfkJbj0hD/68Ou+934CjWlaJtXnBxCNIzIlh8moC4OZBFft6+w7wkMrBVld6NsMgjoL2iHlIXXZuX7qnucw0cGBA0W/wJzPv0jWC/aFjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deudPOqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deudPOqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B529AC19421
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765729373;
	bh=YIXr7mSzMsMA2veLXf2THXHTyjtk3R+WrPqhzOicPeY=;
	h=To:Subject:From:Date:From;
	b=deudPOqAaNCTY/HNwsrrvIaT7rrPslElond5wI88FrZYM69Xw2vQIRt4Z77IzDh15
	 SavPZprKdgFy7mPAD7uUqcn5CEh8vaQlpXOxULpSpowy2dZnTlm9+X4XEisG6HRrHY
	 ZaZj3uwVHsZ4pc3duc/8oDD8h54dKnSnMKRTb68m3+P6LGnqYwvdo6jA7neJ5LNPn/
	 jQTj4WTlKJA9wDBRFw9qUVYLSCRoaLk1BwPeJEBnetij43EDGOzT1NCNqgtg8B2WDZ
	 4bdAaBbPtM5fxCBs5a4esDhfHsz5K7gFBBXs5TzpRc23vI6RzTNXICCzE9eMSJz2yd
	 L+GmHq4r96c4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3FDD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572937361.23522.14320127855316355230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437c41e9e32d70debc658e82618bb649b875cd6cbc2d5e48ebdca946df7662fe
Date: Sun, 14 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765729373
