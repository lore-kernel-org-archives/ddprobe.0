Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9903491C9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781594794; cv=none; b=myK80NK6TyJLEL1sXi0CVKufmxPq8NVUlPPj04+3xe0jht8+Y5tjdSD7nkUpGnsm+RRle3YxoTkPY3FhZ/+RDCHllVZqq7qHzHBcNb5CMFT0Q194hfxMt5gIwUbUjrGxYQN2uPFe2iFO4Mbx/i42ckBuib2Rsgt7CBmhyQIUblE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781594794; c=relaxed/simple;
	bh=W+sbUSgQLBWXAUZGYRXjkl1wq+uqIDm3oSbjz8oQQs4=;
	h=To:Subject:From:Message-Id:Date; b=TvpxlS/nfTMT+dmNk/RaiYyYaAFBa5+rKWG36O4UY5Ht8xL4y5Bmq+y262TyO4plRy26DDjhJ2s8088HqVISYm/mW1Xz1Z7WqqJelc+52+KKr3EpkXkFSIHfrVH+fjkJWPuwOs/QlOaG17RbJ509StnAfTSjzjnBpHBvVC9NCI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnhK1E5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnhK1E5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0649EC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781594794;
	bh=W+sbUSgQLBWXAUZGYRXjkl1wq+uqIDm3oSbjz8oQQs4=;
	h=To:Subject:From:Date:From;
	b=rnhK1E5HmBLnaf/GfwAlaU2KN6o2TVyzl5BS4kcKkaDm5NxL0pszBPj6bor3eaSTq
	 RhlkesK4dEaWBYv6u7o0L9XbYBXp8A5XnC0uH10telw3EcnsnQC1/LaDWOKrOarTi+
	 ZA4G+vruyWYHQPwZkYWmbxYO+o7aoM9ZLLEjvf+qvl2SmmUh7tdShLpS8XgP/UZ0wx
	 PYZXirrFY0z8ZB3eZp0n0vEcdwE67kF1xkFVaqJLl36y2koD/YDXscECdblJn5Au/x
	 3meiQLuptNFUVm0lIljR7XRTUE1zgM4RJyrHSg65I5fZSV8EK0TMkXfJ4co0JyBa1p
	 /OkXH8BvUalXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C938CCD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159479373.20610.10128357688853016266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead5fb9b2b4f9d677edab953343f312bec3fd7416562665a21cd0906888e4f79
Date: Tue, 16 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781594793
