Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138511E47CA
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760524794; cv=none; b=HqkVhcF/vj696YRB2DDtrk0c38XnVurjIN9TWWQxtJl7zOozxCicm+wMyDS7o2ebjAKvG2DBxKZbMngtT/i0NMS6cOu7aOZxYx+329enEOZeX5Qmfb7/eKMyx3m2B3bre6cUUSVZj5+pxyhwl2SsyCi5JQu81zprQU+oxvctDcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760524794; c=relaxed/simple;
	bh=9VrLoZ9wCO5N74q7mKSntn/e+hseJ9oMojFxrq5BovY=;
	h=To:Subject:From:Message-Id:Date; b=XMdheCUe0xizZgW2gkwuromtejDbo88qfuvi0AIpWOOjcQgOni5E7iXiIFbTsiZNK7m1X1wvDx4Wm3Oh1h8OLdGw/a0fbPosikl2K5f1NMGaFCIB7ioZIpsg0pIvMoV6FMZV4vOPQcH2xr3Ai0yLLR7vqulwJPoMJRSpRjLmIt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxQvQE6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxQvQE6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E36C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760524793;
	bh=9VrLoZ9wCO5N74q7mKSntn/e+hseJ9oMojFxrq5BovY=;
	h=To:Subject:From:Date:From;
	b=AxQvQE6ELxEGLkk5ZPc+W8UbGsUUs+4OOku+aUwJkgTLvOARkou7IhDDTECUFwcvg
	 J/HflRxh6x96mh1vCjH2Ur3gbGgz9NPXHRkQlFxipRLN7MBGcU+VuBkxAk/MVaI9pS
	 iwQ9HCUNraB4uN4nfIVT7PpNz/jgA2QZA+KMM/pAIw+mNR7y/guvGiu3AXEYJijkCG
	 W8p9Pc3kctEbjsscoJJGl+w2Nx8dNjZnk1IuqOzRecmTbKkTxA7UMW4HLt4izIujAX
	 b7/V86+ofgq7VQpD45VMO02gsZiMlN6p+DHNBsTJtNAfguINDOC1BUezv6EZIA29FB
	 o+9I6YWbSIH9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A06CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052479358.7901.5604970064546356353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25769379ef88b25b13d1980d037e35a8d46a1fbc64302894c17d7416754f136c
Date: Wed, 15 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760524793
