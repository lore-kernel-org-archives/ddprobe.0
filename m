Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEF5248F4F
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747019394; cv=none; b=Kh5kaeo/g1TO5ALY9BUEDbmJ2lkFMZQJIcnPdnZs+MCuy9/fQmxJRa76NIaqhgZSBH1eYIUDHYq9qCG9Q4n4DV+Becrgk9LHdLyTishUWwcSy1707X7L7YnI5xQ7GfUED1Il2n8+jzgJ5s9gQY4kYBrEtCklrxI1LBFIQMoCOA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747019394; c=relaxed/simple;
	bh=xftV1UjIhxB7oN/UgDSp7eN1VzTy9izwQf0oJz/A6zM=;
	h=To:Subject:From:Message-Id:Date; b=rUZ7FqkWd2NAWgXTKBBFehIb7USJ3rk9mVrHaNOcvPbmKD/3p62VTmYaOuQ3RMQATrh2a5AQQ+JGgv8n3hvN5D67A6B4WQsKJ1fzdEJ25+5Rk/d/wtk9A1YhjMRpJfv0SKqjfxnPGQ1/DXGqXg9dvM2/MxF5ZjgYgenaZdAuDxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAxx0Omn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAxx0Omn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A73C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747019393;
	bh=xftV1UjIhxB7oN/UgDSp7eN1VzTy9izwQf0oJz/A6zM=;
	h=To:Subject:From:Date:From;
	b=dAxx0Omn4zzAnSdpZv7IOs4DZr3Hk2z3mcTRv04d7r6v3SpAhCUH2RntzVDh6lNlJ
	 rhNIGtFthxR0JvKGsWJUPXQya7uQvX276AzUL0G54720KxyDPyv0qOn0/1PEOtl+OA
	 X++quJJMLBND/1reJWy84TKqP9IKnFhmf+VVeiKtqGW++AJyS2O/93ukqQrG8v56IT
	 UlSj49765nR3MJ1zv7oE2UT/9jn8IWeklXQ0iMXnugG4vanxFf40mEr03z1kT6Vzny
	 SwrA7EcJAKGjILpAvB0KfqReFXY/aS6sHYYdsFFYG4ZUc7cs+yDx1xlHDhj2i9fXKP
	 zw0OIsT1s9p3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913DCC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701939358.13553.4512653993684949430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b57a8703a211f831ea14051538f593738d31fafc2c82e1558d66ef6ccfada72
Date: Mon, 12 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747019393
