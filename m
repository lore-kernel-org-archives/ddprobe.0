Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3819228F4
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746341394; cv=none; b=Q8iyI+0D5CPYV4eGrB3cxTJkl4eCDNkzOJFZyPbXPiDd+wxkpSH7R8rrA89HHUciCM1DHQx4FzNt1V7ZICHmmhsPVf2ScN181f66XH46aHAEavvn1wQDPlzGrMb0jmXr4h3r2QqBX/hT+qovigTe6E1rVvjK1+KaNj3iplD++zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746341394; c=relaxed/simple;
	bh=7EoQ/FyEhzvKYYZl3c5z9+uCO3/I3Vq+4DVnrW0N78Y=;
	h=To:Subject:From:Message-Id:Date; b=cugzYwuJuAF8kVH86tRyJd2r19qXcSRVtmAUG3JMJyQSCTeRMQOgR+k5pRu/tITuULjvKZyI3ZxjvSDJWvMsX6EfjDXec9jFpXGrRmPNQjZq7bgQCf2rK0JBhFG/1Fm+eJDM2c2dGzrSuFno7hVWESQQDwZkoOywQ9C83wduguU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L673WOis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L673WOis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A509CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746341393;
	bh=7EoQ/FyEhzvKYYZl3c5z9+uCO3/I3Vq+4DVnrW0N78Y=;
	h=To:Subject:From:Date:From;
	b=L673WOis3Fx0wCM1J683ZpZFzHKQ8bxscosS4Z+o33ZALPiAtVLk1ihsSEtVxz6DF
	 CkdU84Gs8We/0Dk+4+Aq4dmil6B7lmKqcvOj2dpLHKx6mVActPDDKCetF5i2jL82EE
	 39cr17pRsXz7Bg746/AHSgOP0+Li9xT/0B4GK6Es2fYBo1K5H6p729LJFdlkJgoRPr
	 uuhznm2t7sTmrbHNz5joo0gWtJUIwb1M+QOlxdABndDGID0taH8YQ0rtHKhdOzlw4R
	 Tbx0hL1G9K5TS+WbTyz/+Hf3kwDtXoA9ox9JRyVfglB5uXMLzfOD77JyRxjuu2uO4J
	 U48hmsXELBvdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F7C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634139357.31364.16623432328910311709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276660f1cca8b84ff3036041e3aa3f6995f785dc4737096425fb96e13b2fa926
Date: Sun, 04 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746341393
