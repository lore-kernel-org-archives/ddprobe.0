Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A39881726
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721402754; cv=none; b=mudugfAbHvaWTwCjxPLlYNM2zmEPuIHI8gpOzGWfcNx88hyJ35urvzEBgMGdZEePaibHIWu+7Ph92cLpHn/yWvqzbtKXGvV++wiEr8VCp3GPfnTu9iks0WK8Un+UfjOTY001UV1jSEuGtalNhGQy8nBPA/zJ2qxaH5ZLFkGB9DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721402754; c=relaxed/simple;
	bh=N7i+aC14J3kZ+4W2SIpRWeqz2NjXN6FmaNnrornGyIo=;
	h=To:Subject:From:Message-Id:Date; b=EpzeQejgkMPTPXCaUYwz4HWyTtRaJQDoj2KeNcF5WvWU8XQYjczeIzPOEYNb3UeNxWJPxXxT5SD3Kuly4I6SQ7wYoC0UoTjxMO/IM7F0VZ5wpv7vJ7gsEEPG8VObuQ9N2U6netJduYgz+u8J/ocVMFnYRn5nPlUk5NFXHuo5ijw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6DLV71f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6DLV71f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E81C4AF0F
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721402753;
	bh=N7i+aC14J3kZ+4W2SIpRWeqz2NjXN6FmaNnrornGyIo=;
	h=To:Subject:From:Date:From;
	b=W6DLV71fpbWeMJ5jjXWYLYxpQpg/yDw1DYMW82xD04BK/FOlk+lLhhavLZuYxJawY
	 GXY1a9z9tn7z2PGeaUMSDB1q4SdiLVzw6fplW8rRx0WigpUK7djZ81YJmqk4Kc22Me
	 SY1KIsC9iZ0apv6kKvCAP53SA1n9jH1ElWv6WCrGnmA2O/YEn9FQRd8xB8Mt91oeyH
	 Xe+eEglFyDwY0h0Tz4p48vBgImETfph7pHbDZ9CoAYfv6zxlUT6SvY2T10jt9KGhad
	 +9Q3gReP3YGS5BiYV6HMCmsSC5rmefCIvaNj1SBN5wX2rh/zNb6KCxGlLfF6eRDTo1
	 fd+HZ5xFE2Kjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB0AC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140275357.17600.8049459880885521554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30adc35f1195c4a6981f812f2d56b03cedb4446bbe007a052abc7ca4d605b951
Date: Fri, 19 Jul 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721402753
