Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC2230CDBE
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771401294; cv=none; b=Mxg/F2zNdV6hwm9xkwx5uYWSVd6wftO0VFndYgnweLEnIe+0ZALQNLSnJQi9W3S1SGMcwUn8k3b7BdCANjCIVyfblMSAHQ2mqpmcvUj+uCdIKmCL0hnxEv1ns3XW9c1uPkLGw4byD8alzED8U/cKBqvk/IUzWC461Uk2jgvRazU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771401294; c=relaxed/simple;
	bh=89FKKJIQraie9RN6Vk2rjw+f7SOtYVAClUbrTk6edNQ=;
	h=To:Subject:From:Message-Id:Date; b=JhCNKZV+QIrvsGAV2Agq6Hu1bMO52YAzW/FlidwWFvvr/w/6N/vNA/6oJQs0Cp2ixfjtVWwUD+42oSPCr4r0eOj8AqU0MN6k3M9M8i8lu5kEjp6/joawkGXY3zcX6IFZfy0zwLJTvKSD3i2rkdehgpPtLvi2LGWfJlEotgXR8xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEVBQdrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEVBQdrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F66C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771401293;
	bh=89FKKJIQraie9RN6Vk2rjw+f7SOtYVAClUbrTk6edNQ=;
	h=To:Subject:From:Date:From;
	b=oEVBQdrrpCneGPOdGSGYxBwJ7HVq8H2h1k1REyjviokU8zriV3bxpZ1fVTiSUCpoL
	 CyU2T2I5beH+eXuhsrWjPrGdCaGgTozFM9OoV+QbTJPjlXSAQDVBAKmnXFWiIISg9l
	 WmZNm7QiBvdk505lBTB93pQPvnMa4U4guDNGg+34uCxGVvvJa9kDnUtupJPHwM3xE0
	 9unjEJ/zG0hpITraRv8Ayvdy+D+LEACltRuJ8vt4FHxIpDnMhHBDY10jS/9ankhnIs
	 Jzf7+wLND1ozF0yJCtEdSopbU0Rb3M7Q/pOIpqUdUOA0OT7EiMDJb05k3FJ5CBKmco
	 oJhf8pxgFAGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B4AE9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140129358.22982.15523234273532698754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e936ef17c94b3d222292ba92228c64cb9da437a988201905b0db38b735ac318
Date: Wed, 18 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771401293
