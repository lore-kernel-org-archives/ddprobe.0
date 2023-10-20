Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4490F612B
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsEx4t8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF8CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697780296;
	bh=Q/jJhpws2H6vNdxPl0AjCbqqGerTI3hPwiur5HbOVDM=;
	h=To:Subject:From:Date:From;
	b=BsEx4t8rjsrfia4IxNAJ8AwokvxgyENN6Pr/da92ZYbcr4YTPzwXxx49C53XTF9Sf
	 //HjEMtk3v+S0NEdL8U7A39FScU/41JBMyisd/8QjHKmI5AVNoCCVqsU00rScx8/nH
	 oNvPk3adL4JdWdGQsrf3LUJP60Z/FHNq1GPiKz0GAHj+n7sorjyfcAsk4oLIY/9bTi
	 JPgT79ZU5qrPgOSE0DdagzEJTvSJR4zBr/ep9Rf3JalPtLbWXn/Y3/6NbBZFpEWwgM
	 kymgX/MryZe2kzXtwiNcFO6Fnd4thqPcqtPALpg9AC8Rl7l46aR/rwccIT8vFYyfF6
	 Z0IJkAg0X/F+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74953C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169778029646.21719.9662201205965794207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982e30efe10a07e8077ae2e2f406a338f4127b3c5f27c721ca4bec91a579c1c8
Date: Fri, 20 Oct 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697780296
