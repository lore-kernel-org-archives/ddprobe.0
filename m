Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5314438FBD
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JADr2ao9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4E3C433C7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696527428;
	bh=eDGswsHhPRG0jU2oG0u7C48/dePkWQk6s+ltEWrr068=;
	h=To:Subject:From:Date:From;
	b=JADr2ao9zWmaLQSSnusSztq4LvstJ3OZDkXM463+OgcPTMh/Bkqj8lQ/A/Zu9iWKN
	 oaGL6D/RhZDjy92jv3YnHBKHpHPAZfP+3AvCNSm9yuMerhO+1GKigiIZc/Uc6l1D4h
	 w9uersD0SU2aBnXIjkbmbU/cMD92SrE5BHNLQsB0Z2GVMVV8yXSrdHMZxpUOfKzdov
	 h744bBHj/ELhVS6hmY1AO/T435JQutwh5LlkRVTmwroOmWzo6RMz/wUw6hKwd8GWqW
	 4XFB1P8Duh0e3iP0FmdBOFsipQg43e9c5TwWFw2ClvHmg760K+OkXRStIMXr52//5J
	 uDn9brqelFvEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0CBE9271B
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169652742869.29044.8451706737745378467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da05d18a5852e6d00c49cc4327813ddfadda513bd320d4328ce556a37748429b
Date: Thu, 05 Oct 2023 17:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696527428
