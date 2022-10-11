Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60F03D75
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76ED6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665517253;
	bh=LQNNlMCF/V9piRrHj9++Aamr0VDEGyPb8usqeXCbe5A=;
	h=To:Subject:From:Date:From;
	b=iaDP0YNBXZ3iM+oVCKILXPWRjRURPBFvczogTXhy7zL55k/pC1/z465mPFoJBZsC+
	 GGar2CMLmi3KhvH4LxePGpOLyZ1twE71pPb5lRXZzntBBqmK7fBCGDADFbCJRwG4Uc
	 DP1+xA4NQeTIERT6YX1jeme5LPvWTz8+PW6FCQK8nEQLyTYC5eKr/KX4xVdkG34WwQ
	 wPko2NJWWv+QhdUiG6hVSAJV+mfGnCNWfyHkWOIQQcBqe5OyN6bUtDGL4wV8eyQg6t
	 jWt9LLRred8K2fGJW0elD8mee9xTXi6nWqb3NWY+Z1qDGWcepX2GeUFLhXlvlqksXp
	 NzDG7XJGLt8nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56199C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551725334.21985.14118995016348125511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817d133b6603c0046570807f3021bafb8cb4dc5c9adcab4009813330c614a7de
Date: Tue, 11 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665517253
