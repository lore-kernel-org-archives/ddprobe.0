Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B365C7B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A1AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665962453;
	bh=0XiFAOWd7XVKat0Hy2aF3KGjcfSS4agQMt4/lEDqXhI=;
	h=To:Subject:From:Date:From;
	b=bOtQP0iEaVCHbUE+J7H18FwiSAK+hmOm7Zhpe6tnge1eXg89HvZSTOtE16gLBdItg
	 DsrTHt8xQZZrFihPWLuHMhqo1y13VyIkFU/F/e+sylg8rnYyjE6biGA81myePawjXw
	 0oE2WVXICmCCmcJprW3q96kiQt6RIXAvdjnf5H+laaQnVcYtqcW3X+MN3yEuSAkCSI
	 eOoUvKZJo/bZCI5H3viR5pv2wbtqrB0kD0qDbvTOfDXvMnCXtbHDEUhBu0LFElmL3O
	 bNzr7y1CE/EuPBNW3S0ZDkReNMz7yiX0MNzZhhQVZ13jNWOY+EflDxohOjTzZPsQp9
	 EAc91O9OP/uDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B17C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166596245332.6565.14430013784957655151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d1e2af558bfe144f84056c3846600a63460a2f6afa49fc425d5643870bec8d
Date: Sun, 16 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665962453
