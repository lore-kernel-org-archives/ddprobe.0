Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D694536B
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F360C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665830453;
	bh=C+CwYZlrRLTXU1jFwfn4nYYkGp1hXn5U5pUwDV6aLWU=;
	h=To:Subject:From:Date:From;
	b=J5uQj5ZDMjC4fPO31TyQkgcpn1dfRxgS7pnlyyw4Vie/xOzHavfkXgsQjLW+I+8kw
	 B2VBiCox4SoXSLtrezSMQhBNPWCr/zyFzB+aPp7SUsVAUzEUnF3mGFj+oLDgG2gTXq
	 IFy2ZyYEAb0TyP0/o1MFl4bn9SkNCv2QpcBAP2ClnRBlZlnLk8IaAKPQYT3IQpzoSX
	 jwADuvE0XxvA7EFtR4jeOlx/b4AYDgHBV4Q3J3w3e+RWPKvCh25cLJxIIhNnfXjJaQ
	 TeeUGkP7M4fC8gF5rUgj0bx7o5gLR0R0ID7kINyJexkXo1pCSMvL0hsSZjNykBySx/
	 VAqDOL3KKM3dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D18AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583045334.30377.2855482633664949735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb73a8578091e3970a46a03c5b0f96a95cd625e5295e67c8860d51f6963d5553
Date: Sat, 15 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665830453
