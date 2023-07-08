Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854691851
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E48F8C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688836628;
	bh=O3RlrjYlp+Zuw08cFiIs4ROnfu/D5XRlWNpAjqFYHdc=;
	h=To:Subject:From:Date:From;
	b=eaqEwXq1v6/3lC37Eboju+nG9WIqKFsSiDOw6s5xmRRwC/srkwgozLmPZWvvbKHs1
	 n+RoEGCOu8VShKnz5ykQtTp6e0Q7yp91w5EbZlpBcWiyDE73tom15zgDvzCfZg/2wL
	 REwU6Dm/8jq9PZ0+gLWU9UM6iUEDbQ/L2GYC0DASOPQeA76AXi89zeL7soeKZSM19F
	 3qvnz5BUu7NjtLtBSm06lHx3EY4afHJIruav4gdR12yNePHG99vCfbC2D0QBNTb6TC
	 A3jHzB/aDDr4Dr9j9FAIC6y2p5/jkz6tRqvgsvv4ie0G1kLVUiqfHjN2pU2hfMgyhi
	 jqM9FtnQRMjCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4134EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883662875.5729.11781837170669846425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207e4ed8656f630bbf465191f334dfb9785bff6112e268fcf5f631eb4d658ebc
Date: Sat, 08 Jul 2023 17:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688836628
