Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E4C1E5206
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744313994; cv=none; b=PsCUmIrcG+0DuvcFXg07uY9YqeDIXTPphzz+q/gJytZBeAkkdq6XOc0ueecRmJu/Z8wsdoZ0432sFVni3c/V/r/LpgCeT/2B1H37SHCocDrf1PcXy/zqv7UM4BKOD7mW6dx/i79Bp1PKGJ345BqFZBFPrNzJBFpLRs99+4FmLfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744313994; c=relaxed/simple;
	bh=QAV5ioej69taNnvg0iLBUIhZ8KKDUDlMVJacpR1m9O4=;
	h=To:Subject:From:Message-Id:Date; b=Ixu1/0LWN70s/z7x0/AH8MCDVW78JgrrVSQUF56GFslGiDc1L/OOv+rzbMNvONHX86BSWij6PeuAGOIrrhJRW6zom8QDUxKYu7hRuF7eLxIcf/oqt7vNX51qxM1sQXq+oj8ePBky/zSiCKZjImtQUMRRh9Z+E0c7nY/bucapaDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBXF3F6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBXF3F6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38B1C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744313993;
	bh=QAV5ioej69taNnvg0iLBUIhZ8KKDUDlMVJacpR1m9O4=;
	h=To:Subject:From:Date:From;
	b=hBXF3F6PVmeXYqcRBGZ6OKH2xrgyVcyuqZQ3udhnmfM111sRAR5oarp5XPz/iJEZ0
	 r/augoS4u5Q+/zsWHvGEE0xAxQ7/isiWCZPFWMkJvhlp6jwyI1SMtaQDrN7US7mCaT
	 pPJACMCTfPzzg3Tcq2dM5R1YDaEXwSJi3t0MJ3vc9AVl3GIRPfKkm9qhh9dQO/028f
	 ZXoaGBSlBhm9duVYA7ba3WM44LsaqJCCYGwJwCNwbohALyCPORwpva85SgCCIh9tm1
	 XcKiVIPkH2rCasdncIC5ypU6EZhKKv80r/qXudtjSnnLM7atQcDxAt3rCjyy8Pr6yo
	 4jGGdooJLfmMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A619C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431399361.28068.10652216773746488740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 381f1257b1e2624d35a70be5ff7a0639375669993e8a571e398db5d6370d2153
Date: Thu, 10 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744313993
