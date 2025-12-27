Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1123A1E63
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766868834; cv=none; b=QMI9b80qNOR8qzndqXcLFBo8JCKhGvO4ac1QHIK2zWpedxpFR5Bp4vb9gh/zh1e+3gbg7WPOo97peFyJuU8BVw3BaT3t5om3Y2rAzJChUI/NatfY+LKiXIEPt1brDYH8yVCGG2gsCnXBbNg+Irour8lxpanAt+ypGjRtVN4vJ3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766868834; c=relaxed/simple;
	bh=x4ljnYnklqJI2LZJqD9gpgZv8xplvxHbamrtocMQpCs=;
	h=To:Subject:From:Message-Id:Date; b=CNmUHSlXhG9LWYD1WKpvfBxZF3u4z1KVZ5iHLC6qz6jJ+0prQEkpfVPZOkRoIWyUTLkS9Aldw2pGUqCo2LLLoN6anE7AfxE7owH6pUUUU4esWu+43chxDroOtHTG3YiJ5I3VZ23/r7NM+iA7H1xoouDf1E/rI5mRK2EPINr4Zfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfuY2+Ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfuY2+Ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DE3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766868833;
	bh=x4ljnYnklqJI2LZJqD9gpgZv8xplvxHbamrtocMQpCs=;
	h=To:Subject:From:Date:From;
	b=QfuY2+SsDvqyY+jMzQgHqACSsYWdacj6HolOIwRNgyevum1HqkMLmluY2DDaN+cVv
	 5sW/j74Sf3PsV91TWoju+oT8+HOyI6GTfkL6b2gAZifBczM3fMjg1RPiJg0ILKff2W
	 kY5ZbIyBZ8B5DcFLGnNjns9fZiwoEbyA9n8ZlTe1yIgaU0EPKZxkRRuv7cnXHfTJM1
	 uYS350q0qHDQeotZ3TQB3jIXJOQPqzCaAXhnd2bU/UnXrABM7IDMtzckb1GgLz9uMH
	 XnBLrq+7sZolwlmb0kY1ajHPlSSe1LLfz6LKbeDUCim3/FGTQ+d0a/hVvRBHeSsyZA
	 XWn9EuULPtjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933DDE9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686883358.26206.13956529323068779952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a91bb56df27dd61851dc764c4856395d6153c5c4c43c6c7bda7c0d7a6a8791
Date: Sat, 27 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766868833
