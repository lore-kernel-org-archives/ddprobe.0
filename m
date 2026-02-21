Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC2C1AF0AF
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771686894; cv=none; b=YTzCo9KlNlSdmtr/ypvD4Mrz0TZkjXLr0+zE1qTquaKIoieNuk6JYmYbBI43fD/IBw9cWeC2tWbGPWcNDJNj3DfqsHamqJ/tH7Zg2IQNfP7kCBJAblgibA6CM4kyQkk3ToVmxqJg5BkEFSwfMPNEtPiQzabze18Xgxx7jfqhxPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771686894; c=relaxed/simple;
	bh=JQbXJfBAxQuwkG707xCPQWCK4MbLUvNpqoERhyQg6lA=;
	h=To:Subject:From:Message-Id:Date; b=pU+GGwBYDR4gS9GWSG6LXdYZ7X23rAt+uImUSXailcoxNaYb/1jx92OsglGQjw4aBNB6xNXj/RKLY0a91C32MoDJHOXTot5soFMR3gLAfKCcEiwm5fhreYQhyl7QAkIi/ymGO3pNdDVR1QqycL8pOJ9HVDeL0bx1HBSjAL5n3I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJMIbyXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJMIbyXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2832C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771686893;
	bh=JQbXJfBAxQuwkG707xCPQWCK4MbLUvNpqoERhyQg6lA=;
	h=To:Subject:From:Date:From;
	b=bJMIbyXcgdq3U8Phi/GFenxIUHpuIPZkGKlMq0B2qzHTra/ih8fsb25mhz4bH7Iem
	 f1OLh383+XEIRSZ3mvTl3TI1vjlaXkL+zoOdJ/wiWR/vEYEZOMB5BnNrTIqHGJetIB
	 +s9PAM22FHlxjPBrb+s/P1Hj0qKlBchc6hca6P4CXnYUDeN6KKP7MM851PiDfJGkMk
	 W9K07nL8QjAd5W3YRBgVGfzOForuvfhlXoUNt/sC6sQXC2z7Ux4d/qTMS3q+6JwlRr
	 rsiEryssemtIG5jtEqJZybdRzj512Q27qs1dguceVBAdSbRIgcPq0A1vM3Jf/3TfiA
	 IL8cR2mfi27Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE56C5AD7B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168689359.432.5708759939526890050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb12d5f892c27daea0266297fa49464bb2175f857f4c0714dff6d81e758276b
Date: Sat, 21 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771686893
