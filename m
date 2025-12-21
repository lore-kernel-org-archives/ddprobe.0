Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269CE78F2B
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766306034; cv=none; b=iOBGJuJgTQcbrjw/EYRi5cVzCSpJBpVx/hADEEB+VUwhfuVcfIXWNmBNdvEgKszzrooR062LcUcaRYqNlK6czw+QWXLGTcR5Msq6XmcpulUJyfgpcSpKzrEDhIciFHwYpy4NNIswr+m5PiQsBLTh1y12nztbiKAuD4Zdmq1MoEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766306034; c=relaxed/simple;
	bh=LI2iRbANz2UFxa92ggxWQIAs3Oj3XHy7TFrLMfxkKtI=;
	h=To:Subject:From:Message-Id:Date; b=VlsmK0oKlphFuk6QGIqLHhu7mH3iiJiCgpqetAi9a+zqs09nrKB5f88EhVA+UNkqKRjtBJlNRYBIYeXHSEIrIDiS3nM5F+oxo0OCoZNpICye13XqRyEKtbdkPpZkuEg/ByYjIk+KpLVr/+nYiO0YNeDJ2l28zkOZ0xuY3pe+fpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmDeZVfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmDeZVfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1327C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766306033;
	bh=LI2iRbANz2UFxa92ggxWQIAs3Oj3XHy7TFrLMfxkKtI=;
	h=To:Subject:From:Date:From;
	b=dmDeZVfHd7OC8aA7VAyW3nhcl5pOVS5kiAQjTwR0kWxW8N3JcDgBR/snMYcSxZ78f
	 cvbSQYkqvqI7FW0MDj3PTfDvJ1u1m7dX8B39LHd0Npn3Ly9WyLN5CCWCxLVmVt8EST
	 6AugYQEKjapatCJrd0rJukumedTKFHfJ5kO1r0rlJ14wW0MAj/Ea+IuxgMd+BySJkr
	 WKy1wo/EVlrCnS2H1aFntA9HC/rD8tAOtf5Aa1lvIEtVZjp82qJJS/46xhIGbLJXhU
	 KMpSillNxkXr/3fA1ASpCsX2Or5odtD7Iv6ehOGcgRd1kulaq6Jeqj+efzD8QeldrZ
	 x23d9jy9lwoYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB10D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630603358.23351.15460701003301860428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ad608cdced51e7c6346689b685952e5998d11fd9fa22eebff391b2fa743ce4
Date: Sun, 21 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766306033
