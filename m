Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471141E7C01
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743537595; cv=none; b=aEL4LyZ1AoP5l3ik/7gMRLuPnla5sw10Tr5/KNfkgN/2JVcmHakTcMKeUepgM1X6l5XkfwwmhY/J/56ep694MqxFv4jB1drB/oWc3mhdiV4Ctp1CCXUXNagxQXc4+FcaFMRfONkzvy/ebFQKwWKY8kEErhgvd1XLJMDG1YPPH5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743537595; c=relaxed/simple;
	bh=O+mzodo5XRFOVWaWs+9LWEHBpUAztEH1CB5Mgm3d6ck=;
	h=To:Subject:From:Message-Id:Date; b=h0x+2HRv4J6uAAIGrLd4sZaaYbBpP/46SrFRwGafKGVDE9xvKA7x3T4TUE0i5wO7QE93Og+h4tGzOV7mRYTF1cN17HSPXf3r9f9f8Xu/AzqwR9gNPc5bR7P6LhT/jrQrCnX/oIIoOzwlGHl7kAB+lW1pHdJGA9dxnCTZ4xDQhKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLgzrteZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLgzrteZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50E9C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743537594;
	bh=O+mzodo5XRFOVWaWs+9LWEHBpUAztEH1CB5Mgm3d6ck=;
	h=To:Subject:From:Date:From;
	b=FLgzrteZ0o7AMbWnuh3cJz5SOUqxX511XrqaKna1DDOpj6kj5trXG7OUVo3kbv2cs
	 bBKTyouer9naLshYHBfxz2OPz8N4SFenoR4eEacH7THgLjxMALPiFPKBOfXFmyK5Bd
	 vh9u1FMv1DKGta6gGbzzlUVnZPmeTA3plGBewIfstRjqyhoSk3gh1Ztnp+LyB+tUSe
	 uBaNLrsFwfiX9LI4vDQzAVbIm6fZ/r6H9W1hO5XktkHfQHNFFQqmGPMFobUwAuJXmN
	 roxCqKC+g/30b2X27UJ0SQnBfPae82mOfEngIth2CEkD5nHFFanWQFrXCn8skEDBot
	 vJ6iu7zXsF8QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2851C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353759365.3297.2221261183148633622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6084d5e6279eb14c3288ae2d4f55e43e8a843fb8443d452c9556df8d83abc647
Date: Tue, 01 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743537593
