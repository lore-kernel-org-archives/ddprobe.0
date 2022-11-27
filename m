Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCFD3FD4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C73C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669578054;
	bh=jVGFSIeOW7oP+O7AWAHg7qVZb83oLUWeAwdruL3B200=;
	h=To:Subject:From:Date:From;
	b=Zw4xSl+Gbt1S8CWtvgC08zLTJVQXIKJBwHy+MFau16OGTdhRJU6VuWoJyGeec5EWz
	 HJaJndnOp0uBtWFOGdFaO32BBrDnS/ThIa3TmmsyFohAjVGESB01dk/eHYV3fqo6jH
	 dz7O7G6K5IHhVKDVVZFEGyfP7CcY5IJc3q0U6UReDFSCgBGVfCr6Ks9RPpMQ3/Y0nl
	 BsbUrvCmDBmhGzHJ1TnEWDlvX8BnTH+rySR55EhjVwFyCqjGRGkSdiESdTvMr0DgfO
	 2PxegVMNCWLUACt0vATRPF+muAypgF8ITkMVoSHtbZXMULDIqE8XLhmaIwP2Fc788s
	 jKBWnnyfNZyHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E25C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957805432.29854.2994242875504519291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357e2ff5f5d5033532b866a474332992f37a65bed461eb21fcae282fe888a020
Date: Sun, 27 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669578054
