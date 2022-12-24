Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE7E20F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BCAEC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671904287;
	bh=PbYkfYQenm3ujbcgE1HsR1H57BpDEjCNA7d8hL0Mfqo=;
	h=To:Subject:From:Date:From;
	b=D1SvEcBfy1D0CkJFTCqzNksk4fJ+Tf0BVZuS16dbOC+3/bw6pcOI2aEMlx9FPbjZ4
	 QnfiVAj5iH3opXmzHGGyU2xXyvj726KhGSw0HXa0w5F6PdDH6ISt2E1E8e/QVNQpXp
	 STa+YYgmVX7GrUbGKC1ysXbLzGSlgUD9yHQCq13r/Mj+W/7oAOOUEedk7ZSC8eActP
	 6HjtJs+Y4Ptr63W8PLBDc01R9sGkIZOwCgHZav1whE8H9CNJJYIF8D1T6Bi+v3PBko
	 5NJr7j0KQqPW8xjoC90uM4/0ncHYwnztatZcFCSrr+Wb3xiRAtZVFK2J/ppGneFORp
	 hRLDVxlmMRVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A762C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190428740.547.11319055831968612816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c0f2a1eaa9ba9ae25bf8da8b4151c6a5905946ab2a0fbf77144782c44244305
Date: Sat, 24 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671904287
