Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E421F2382
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735310754; cv=none; b=NQr8K6FoS74VpQ7HWFJ/5lJYmx1HfsgcxdgtfVeuz+sfHss7Ypv4qTeD5jFR7yhAMxcYLXq10V1DK7dWyAQIMwYyezJU9k3UsP8/oByYwftiDu1XL4i82dqRIgEkFTyY43/VNbmLAliwnwspfTs0xH/eDnsDxfva9zML4wjeFto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735310754; c=relaxed/simple;
	bh=wkq+vhFQUO12gPWQEKEOL7dX5P/nl74xbVG0d1LEvkY=;
	h=To:Subject:From:Message-Id:Date; b=p1E9esXSF8PJw/RtTsAMjj01X+/QyGKXzBlM9xd1FnHIqFPeZSC7GO0TisA1AMyLD/mLx5y1zzsA3thu/vBORYindjA/ttMiqYFGEa0/w4EUrPKfZ/NBF5wtlFGkK+u3x9IRJu4eN4Dd/CT2HhEtGSqr3QIHNI8WclAx+/p3jFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDnNKAxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDnNKAxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B666EC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735310753;
	bh=wkq+vhFQUO12gPWQEKEOL7dX5P/nl74xbVG0d1LEvkY=;
	h=To:Subject:From:Date:From;
	b=FDnNKAxkZxYwu+ZieTrrbc+ywxSePdC7GrBoY6ddWd4HLQ/EFZTE8OkDth4xFuySb
	 ZFWrBz8Vz6/VbTrOos4Qe4zUacbBVjKq01Wd0qSBBSbF+xH/41tOq4HRVhqq0FsAeS
	 GA5bLL0+rp7paJ4NUvKTMHJnWPGNt8UosxQZyzjQE2DQEeCzc/pAWQDdmFakcexq6T
	 IJwEDmTRlIFh0Mc1Ixanc0Q9AVwHydHitBaXxJN3QWanxaBR0bGK2K4ldG7mK+lLgN
	 cWhGrVgSrX2ewTbZet2KWYxBktZ/9NTtDhW9eLCZhfhKI7mAKPv377AcEiEACZcqMK
	 5Hi7QJlyl/l4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04AFE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173531075360.8605.11870918921168307237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5f8645ea95a26892e4f27234322a487d877d60a245de1965201684503a23cf
Date: Fri, 27 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735310753
