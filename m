Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBDE165F16
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787443834; cv=none; b=tvWaApCPe6qokGZ4IWXlGu0LgmwNRB1p213F4xWVRci+MNsW1yVHcrL7eAlJe57sRPAlLpAgZKCY1EGg3Jt9G6LN/2YWZQ+/oKmF6G6Ip/oq40VTdGe/Y6pXnakMcBQgfTjco4VAZ9b+RqRDzk9eXnIaF/KgTVT+A2X6clPpkTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787443834; c=relaxed/simple;
	bh=/bO5Km3aMcluvb2N3g8qKhPYCRLQ32ef/A+mhRPsSyQ=;
	h=To:Subject:From:Message-Id:Date; b=layYGo63wyQ8ubzyJ/gIS7/oXXdBTRDZ4tVwX8UYLO02453sLD4fWNVuuZ5mh+jiWG4Y6kki5Sxa55CnCQtaRlImFYQOMN3qsxoQcyAZV6ryRYHDuc0KurxP3mZK7OKGJsbJvYJAjd1qNYysA40cXic3eASNgl/X87bkqz+ql2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/P6qNI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/P6qNI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B35C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787443833;
	bh=/bO5Km3aMcluvb2N3g8qKhPYCRLQ32ef/A+mhRPsSyQ=;
	h=To:Subject:From:Date:From;
	b=r/P6qNI2hC76Ujw9kOIXbtp41PDorwFVnEW4T2MuzwrIHUFztqBWi1S0xFCqM3//3
	 6Jj9XQH1J/hKYE0yD8yudOTnS0hoFHM6qOjF93i8l6iqjRzBfuug8UHW8I/rLuwT+y
	 wQ/7E3Kj/oznB+etCcR0M0UW0lMTHaMnSvW+h3FV6USGB01JlOQkCZbMuyItWeRsrh
	 yA39yEE/kEVOfN4AHqYticSK62GhyUjIs3zEFJeU2rPPJqO0zTms1E2wMHlxB89jJd
	 eiFokB+HAARPDUCbVu7FuX6EfJeWXt5l/GypkIeS/zgKBcHBqyDm63X8B8th/Qbkxh
	 0vA/XmEd0m5JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1545C5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744383369.32076.3799826788047193417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8465da972da26ee41ecdac8f986e52b712e8ed06bc541a8dfa6c2cf65936af21
Date: Sun, 23 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787443833
