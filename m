Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C77439AEC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718741963; cv=none; b=Z3K5NCqc0zqiY1+k760PXXN1s1RiUfHoeO2DBmwVpFzgieVhQFk8XrCJjWkGWCecYJrZxEE9JPlhi3Li5wDSo9+t5bZXQZSyRjIWyyqHoMpMwIyyPC1vqFFmtyUhpniWjd/cYqHUTdr1QN3Uq7qK2VYVsZSJZH/+no8CY9sTQ+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718741963; c=relaxed/simple;
	bh=kwb5cpB9Q13Wn8oBuQzx1EOqUF6Ck6OXO2m1tmw7+ww=;
	h=To:Subject:From:Message-Id:Date; b=DRHIbjbbkRiJsNUZmAYZkrr4uWF97bUJ9ldG9dqLbYLzCq9G7HH9K1OQ+8daoxec7dDEfmLBgjnYzheTCSGxE4Ef1JkjYymmcHcwoh8FXI4crlcXo/kMuYyyqhbOSIyg19TJyBZxqxbh2btl9nblQKnHeu7Jlw0Wxc/P7Yqr/os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJ1KHT0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJ1KHT0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98EDC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718741962;
	bh=kwb5cpB9Q13Wn8oBuQzx1EOqUF6Ck6OXO2m1tmw7+ww=;
	h=To:Subject:From:Date:From;
	b=vJ1KHT0QgrfAkCkY7r3c++Uv1D4tguwlmsxNS0Iz2mqBsrnClS5bgcP7sBL7JTHy1
	 GmB52zWFIOF3EnJ2f+B6wMlebpjxqr99wSWFKHOw7gopHLBHrceKfPFHsXIQ9qJcfq
	 XYd8eG7V3J0rSHOBkex9x/4KrYBYGBT1gKbnsoxtMZYoBGKb7cLim70f58FQZELP/k
	 OhxK+MiSJPduRX45pCKIiuHuo4DhbeewnaC3efouFEwpKunlsK1C1gxEepLsVLJ49F
	 6YsXHGa5wZPr4oc/nz/TMyriUY4wjEWi6Eq63ykbBlBtasreB/fa3njZ03kq+Rf90V
	 x7OL9Ae2T1gNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0773C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874196277.466.17405135391403375243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddb2d6ab577ad03c14bf530045e59b7ff5b0666cbef08c02e393342160d915e
Date: Tue, 18 Jun 2024 20:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718741962
