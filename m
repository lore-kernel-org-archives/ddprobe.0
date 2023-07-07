Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF7D1774B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94DFC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688770628;
	bh=ZnThurgbyH0TDZfaVxBRUApayatlU9/1y8S9klHiBxk=;
	h=To:Subject:From:Date:From;
	b=UGZey0zKLBfsWuq/jW4RpiBZvIloJzhjftZ2bziSHdNICnX5K513RTJkU33FPdZAg
	 TTfCX+ubSBSc/Rls41l5ODudwP+9NylnP3bWD4VeM0eKyrGXv1FuAIBgH8NxeDGO0D
	 pk5+KuBzyM/pMuIesnRL5AdvstoMptlu8fj3MDfJnXCcjidI/rJjH2JXRoqEzlq5AX
	 QA32gWu/2tD0XTRS7wqhzFM7EuLPKtqDgfJpfHMm5SAHnlgrIT2GC3yRi5GHlOqTem
	 U70mxhpOSiw6W5WRAogae4Omqr2UPxz6/cEZJNVDZPHFJ0PdcpN/T9EIvbyZGCw/CV
	 4FnTD6c9EgFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AD5C001B0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877062871.22948.12958691825486329648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643c94516b33c1227a0757705806002ff6d28f9107cea007a38e36c33b2becde
Date: Fri, 07 Jul 2023 22:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688770628
