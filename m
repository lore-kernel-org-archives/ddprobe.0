Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E83E1DE892
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752618594; cv=none; b=eS2ZxdWnQit13oBa2sfOnePDqKunv0pLNuIOGscmc7kJDuOv/AoC09jzUz2vD21RZPO+ydkQGwZLdugXnsqW2GdWaOv625mE62I1JvxfAcy620zUgHOfW0xzUdxSOTQiF2KONAJhD7+DWNIFktmltepXqfvXmWpnM43Y21lcoU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752618594; c=relaxed/simple;
	bh=gIeCfhaUWMwXrMHzMv5Bb1wkD5Ri+EehnDjOOXfSS8E=;
	h=To:Subject:From:Message-Id:Date; b=GXIqgQb31l3BOFHF2jjcwlmvDFkMK9O2+ENuWl1vZ3k5T02pGTJLfzpDiouecHHKg1mZu2SNKpO/Y5CuhbZ3Pi+CEgXRFvZJHuV63pgjeXGV81P16x0MHYIoqAYqHPFOGNoE6StWH9QB7zlDhqT+i/JtIPdVs5MZ3tU0QR4dzUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dO6YYyCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dO6YYyCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04ABC4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752618593;
	bh=gIeCfhaUWMwXrMHzMv5Bb1wkD5Ri+EehnDjOOXfSS8E=;
	h=To:Subject:From:Date:From;
	b=dO6YYyCsGbhGLyV9KFomKmbm989csIBxFJ7GQrJGk9fBjy/ut9cRqx5rbaYAXDNTI
	 SpTQJSdQgZtP+C22ONIUIyMJRy2+kd+P8Eb5k42+44wPluOCLRcY8Sja1hW+7BBT1x
	 IfHRWT/7mNc9nBLulTm787sv9oTQFa1wRiSj/pH7BV3cI5UI7QFzWm+bNXQrKHYvDs
	 2mYSTZhNBN1BWbmcmvnwQSaHCPC8CNp2Ue93nG6OXWG8OZIXMx6B/Xv40CLQZgIhzN
	 mJ8wpRkpHolYA7hBtZTqlifmBzPR5BmBgxn1ZOa/2PVQoohZfvp+8iiAqzW21JHIjI
	 DE+4chYhXcXtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B9C83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261859358.28687.15025111522291039467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9345ed235cc898902db1b2baa697adda390f62e808ca73c5b1dd03dd452328a
Date: Tue, 15 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752618593
