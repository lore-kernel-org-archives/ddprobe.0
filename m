Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE256430B85
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772342694; cv=none; b=DamXGWgPU/pA2jZbooE21GxQyxMemvdTjq87OrhR4bbWYXAK3/n97YNOM/hiuArx2U8VkCPcjcJN5Iy6xhMPk+xdair9YSSHGHWKB6L0GJB8mchfAiRLGhBexlM1zM3niHK0hI8USTxxmtSld8A3JEaB+dSQkcnDl0Xg2S+IDTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772342694; c=relaxed/simple;
	bh=obpQ8+k0im2JPJIwaU+6uG0VO/xMx3UZIXWwN8SsifE=;
	h=To:Subject:From:Message-Id:Date; b=uoIGQVzKpXEL2clCv4sYJ+3HXX7awY6pX+LwWQojmQ8cfzUrhVriyTyTbIh3tvDelMo7qanQ6amV8X/VkQu9jgczdbnSiJrxH2/DLSFPEjjUG0En5vV6th9EaqKVoliOg24fMK4B4CiS4jDlxE5TIuOkMpPbhoU2KUvZrLUiC7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psp2ZPUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psp2ZPUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABADC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772342693;
	bh=obpQ8+k0im2JPJIwaU+6uG0VO/xMx3UZIXWwN8SsifE=;
	h=To:Subject:From:Date:From;
	b=psp2ZPUeE8hi3/ZsmLd83ADLsq9YG4mLsFj84icrTe7FIte9ughuRJMXqoTP198rN
	 zZc5OHPShLWTTpS+S26CJ/uqV+eZQDNh2qshDuah6LM7UgYPIC1o1hxJloxe99CVvK
	 LUYXVARDNRk9U5DR3Ii//6DFcI3wOJXDnwKReZfRi0lUNoaCJpYZjUqPccqbj+tXPy
	 YOTgVUfsSn/9jTh2tQgV8B/kDx3bgRV9dsXRp0RNKGRv0wRg7t+gtXauzAe/aeduWL
	 ReCuTXnIzz1BIVZpvVxAnQMKPldV9NH9U1w3zOdQqAFg7UVT4HlrZVtJpx2fx9QHb2
	 U19G5wU49cRUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948CFFD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234269359.27436.1564884829606694468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725f12d74544457f009b03340e3bc58ff222263ca36317f92c4db2f83c378a81
Date: Sun, 01 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772342693
