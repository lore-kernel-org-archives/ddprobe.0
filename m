Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FDF5346A07
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786681834; cv=none; b=YPW4WjxoR8PnDa9XgQfyZVs+6eXDX44/XKIu78OlSgozCSMfo6xAIW9sh5XqVaAb9fDUpEznpooq3f+JYWrkCcFzmoAiKZ+zz4Y8Qtp2PLra56Hj3iYI5/BAxkcMhyGmZf6PvkGMVs8uegMFHNPx0Iel2hG4xodZkMZSbJtEHw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786681834; c=relaxed/simple;
	bh=qpQObM1g75Yv2/kLwasmw4f4cJ9yq7lrK4dLma+0lyA=;
	h=To:Subject:From:Message-Id:Date; b=agAVMeIshMHuC2gfpa7PPtMMobmhmfwp4UZ44RKIfQBQYMSKaSKd+wMNPNVhA2HNphX3pEE2bb45zXvXeZzTZcuihtZkzy6b9cn2f/6OnkmO/VUeDpS4p3BcnNAbVSxYShHRYYeLGpZ6lCyk/7bu8Rr29v9LtoL9chm4530jCNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CO2lqHYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CO2lqHYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6A5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786681833;
	bh=qpQObM1g75Yv2/kLwasmw4f4cJ9yq7lrK4dLma+0lyA=;
	h=To:Subject:From:Date:From;
	b=CO2lqHYjFUXJOFT1JgYNAmgOkpI3EUAq2K+JzCN/wYopK9LDuliaBQNi/Mp9dvKIi
	 SuYSLd5HtAAR29l90HPvLVMO+yTBUe6T0frGYzcPy73zaN2K3OfU3DVzrG6YhL7ijn
	 FiXMTDNlj99Gkm6vAXbXRlIsNbdlfacWuwcfmAEbGJW71qLZInVyq34514ok3QznQw
	 oRbNCtuGRajIut6iNiUqoWGjiThKn29kqjpU4Cln/PcXn/ycSQ37MgOZEQBLPXrBE/
	 d0yA9M1ajqG5AU6voHZNToJduKMtO93Avv78buGCM/HVpUZqd3Jk+zaoWzR7+/4sZx
	 9Pwc/X/2Bdoxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9837C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668183368.20284.12135190547466639172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cd809b4cbc6e37d29908cadf15478814f5b57879639773c643251e772be50c
Date: Fri, 14 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786681833
