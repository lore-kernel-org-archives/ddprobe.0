Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACFF23EAB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779088834; cv=none; b=tDtEAU5uiYSCm1ToZYntslgGaLIF6NcUFdqM/dAVGeLBlzMR8prPRNJBwB2gXlQCPPFNurj/rzRkFo6UxsYXcYUvdjI76CSR5tmj8xeU77nugm4arTFktcvJsaiSbokYxaQbXV5uO057UElX1/qrjQLfmnpMZCg3a13Eutx2ViE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779088834; c=relaxed/simple;
	bh=d2YBGqRZTF6ORchvVMe9/rNVbZ5rFgC7KN4Sa2/sLMg=;
	h=To:Subject:From:Message-Id:Date; b=LWbcllJzC0LBzkpAiqNySRQznVgwXmcPt+uyRz74gpClfTL8y24L6Z+xAoZBFZ+t1h/5r0nYDTPhRrYapKWHXO1wD/IIb439b5WOp+GDUwzcvQDFdNgdaUy4z1CnDr8W6mSwcJMCunJEXIuPIGc9iw8TN5bXhj+2NKtpa7fj5lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDs2KsXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDs2KsXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEA3C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779088833;
	bh=d2YBGqRZTF6ORchvVMe9/rNVbZ5rFgC7KN4Sa2/sLMg=;
	h=To:Subject:From:Date:From;
	b=tDs2KsXdjcW+qB5yillEmHvnYWrFg9vlxcar9GNPGRNoMP/K8QYqXBfVkJ2SIJwOg
	 3DY7BnG4CgSs/dLrQ8uMf0gRWVrWgGzOXvZVFvvApsQAAftxpNLV+pSVLKoJt8RVjt
	 Uo45d7gUdkWuum/TrB5YWYny5CPOOI3tATNpFlRoWuleOsG+KFaZ4kQuC4y5bC4mCa
	 VvGS63xEpFWfzEPVDFXP5Z05pQSrQmztnWlF0Lz766Unbf3H1ciJn2SQDc5Lqfjb+L
	 B6TGIvveYCJezOIc0f3HoYz563pGpEHNa9B7CSC+gY2eDgMZuGV0ndunVSSuED8134
	 6fVEKxVlQkbtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE90CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908883369.25235.10252188484608744360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08bf7756ce0f9051fd6185fc540181a84491da661d2c0923d233c5483c89c8f
Date: Mon, 18 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779088833
