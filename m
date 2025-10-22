Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C90D221DB5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761135594; cv=none; b=n8kTSii58uLhgxndyQ1Qrk1Tdcm4j0TBVPsL3VtdZZpprZQ/MxE+zTz8iAqhiqRR0jA41+1C6HWV9QbgcZOs74O+8PV4ui5xJHy0ghfuHbMr6nCgj8u+aNfBKbHyg2oWELmrHypttxg0Nm9BhtdBYykRZg2+V+AnO+wow3lv9Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761135594; c=relaxed/simple;
	bh=MzKWTYKa/65USb7zuXL5EVnpXa+bUQZAQ9fl2Fo4OzE=;
	h=To:Subject:From:Message-Id:Date; b=muDY8KIGhFpBmJtVZJcq/DVM4skshf8AF6dvEBzykhH3YWzHu0isqwLJ3CTm3+xpA56GnsBp0+HAxD7HHBo3ZP6ERF0LxdKZ48Svk6+py9pLXR/2N3LUaz3ZyoXc/z5hxpNSv3/AzpDgfum3K7dWvTyAagnubJv56spu3p8ea4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmzIYSzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmzIYSzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7E5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761135593;
	bh=MzKWTYKa/65USb7zuXL5EVnpXa+bUQZAQ9fl2Fo4OzE=;
	h=To:Subject:From:Date:From;
	b=ZmzIYSztAJSPY1gQv2Ns7DHS6NXAHS2NrgXx97aPJNd31C0GGAyIslFk0CLmthimC
	 bRfpA+8afyv91sHTI7r1bdZY0es5wC9nYmOCB3ElCKzbxq5jf9gPMJs2HSzhA6mdA2
	 1X62YGLt3psVzkf5TGZCJq9Mdnxsu+c4tgf20kFjHTh04bYGR/RGIcalOUH3Huz9Jz
	 Fz8SlW5o7YeaSZGzGKfSFSF6GjEIxgAuuzQL6wKFNApZSJwIS8oEfiDoH2xe5Cf3Tt
	 qHyceXd5NlW488YaIs36OCxJusZ29oJUhIYk13yfOfsgPhLy9LrBPIsIEUl0yawOxb
	 8HdCS9xDq3Uaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E2CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113559358.10305.3297091697516876482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a24e6488197ef383e3ae6851e3feac0da4ebcb63354544959086c244cb934c8
Date: Wed, 22 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761135593
