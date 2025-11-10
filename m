Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099AE289E13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762804794; cv=none; b=N91Ww2QkDtsL5xhlBFU0NWWaWv0gQBOGEL6OZ8XyuDQ0iqOTd/9h4gEfgtNd3xUR4nDkTZnyEHbQQmp2mJDfznRDl211dhjKCvUnuR/ABXcGmrv3h7bliXsDd4a/y0myA2LcH4CBwTMkanNGnSSVIj9pkTgLZ+TL6uFbId+2WiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762804794; c=relaxed/simple;
	bh=Gcgfu6Mv0yGOTU0Say65TFIDMyEOs1PnKXsYfFNECH8=;
	h=To:Subject:From:Message-Id:Date; b=uZvx6gPxjOa/ku0CiKdYsdWyQ0c1ZCHYpXROY9kIgtCVrnt4dyvZ2VU33gnqjQBT3vPa8VGxl4OPbp3xiH4X3+inEkSGooojb9uG+JTtGH/6fhOfpql51h3GmzxmiU48irAKHa7tzpvzwPRmOIcxqYnuOF9OaaDhU+D6NK+xhes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCCwZygi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCCwZygi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4FAC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762804793;
	bh=Gcgfu6Mv0yGOTU0Say65TFIDMyEOs1PnKXsYfFNECH8=;
	h=To:Subject:From:Date:From;
	b=tCCwZygi9a+1hnri27BtZ6cyW9UVURfjiTp2QsEdiHVzXPOuK7DE7kCWhYlfeFxWm
	 TeXGBiKBnV7l1j1Q+CELcMxzrZwPZmCKWddIe3JMIx9DCOuwy3JQhkdjWwCsbR3oQQ
	 +sM2hWgILYumqqt+M1a1aD2XSG7oyLBpfjKAkVzZpFY6mHFWg3tXKH9otY70NRyX3h
	 ffTwAqdT/SYC9gbYWHB7g5bBGbgt6UJZn3Y49zY5mO0QYi3tKe4nevDWv3iERMZ4as
	 3y7cusFuZx65fXrK2jYPXEbM8CRGAmoHq1WkQD7MXHJhk73U3ppSgwOEEUzWdP1D6m
	 lTdofjzBXJpjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC73CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280479357.16320.367282531790965933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b54773d0b15892aab563ff1b9db8fa73179505a4730fcc1b80777efacbc095
Date: Mon, 10 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762804793
