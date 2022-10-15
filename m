Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC29C7ED
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2FCC433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665828653;
	bh=Epm61EzrSgRbXLATy39qvoiATA98k1TDcksPRmK8CzY=;
	h=To:Subject:From:Date:From;
	b=hKkNeNa+RvwE/YvdRV93Aj7ms9yRJKFDjkwvV31/8H+c+8wHjgODkgeJqYuCkoKtl
	 7o1RoQoAI9cA4fwXH25d0qmaK2ol5MpUauXkMukKYJYbacFwTSVUQgNDCQNS7c3XrC
	 FpMNBsUICWWv5u6E7swh0uK5xhj0pXYvM9Rq9pOJFLSmmVN+A9MdTcUEUPP3baMzUg
	 2YPI+4PnMCsM633OGR7umDiroWnFrXfdAGzXVJkPbi/fJuy9eRUyQGv6D0LShqcCTR
	 zhnjBAuA7c6K79OP3+7/lx9uslAhb3qXHANz7r5BuvHyrOoUBHtGNSX2JhFEzioboU
	 o8PzSlfcxUidw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53298C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582865333.7822.3009987333050624471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa57628b2c05ef3852ab9014bb9b5901897b84dd1aafe7b487cb8fc59866716b
Date: Sat, 15 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665828653
