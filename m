Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B713E8F5E
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A06AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667157654;
	bh=QgIvecGYn907elOQcHBmsyAqKFxE7SJjQnSPlF0r4oE=;
	h=To:Subject:From:Date:From;
	b=IlCVy36AUDQybiIJn+M4mem+j9C9zvia/wAIUUkUnWxWZJwEOj1br2KLtciDwFNoi
	 v41ur6PKEjjDClz/zSiGccVwgGHx1Vcoc44sp5//z8YDYPQbYCH+xzPtruN7kKFGMl
	 WNfTXGK8OokKM413Dsd6gZYyXMCRWnIB6DLi/s/T4Cet0L7hYLVfGQE91Cg8VEDQQy
	 zqBRwTiHyKwC4BrsoAXWsBxQdwThOX2K7uVP0h+2Sx+s4JBl4YMk463RVo4Pe13f+i
	 wwV8hj8m6LB76qDFVlfNbNLtVp4fDhBKtI+zc8z/1zUdDqMtnbNJNtxMr+8HMt47S9
	 BsGohbvEV6pew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50518C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166715765432.10122.16118865943478851054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0838edf6d3417bb9917836ac165784293de350bd65d2131491c1c4ce1ab387a
Date: Sun, 30 Oct 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667157654
