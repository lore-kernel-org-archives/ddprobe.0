Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FDD7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C7C7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662913853;
	bh=SVtarbS6Rc72G6tn85q4TXgoPqmFY7fsCvvR0niQiW8=;
	h=To:Subject:From:Date:From;
	b=VfebkkyFizcXDVwXELggpa1z3+7aWXViqZ7P6RUyEdiHiL3UXs+DzOwJ9FRtNi7oh
	 taag6rjpgzTifaUsrr2z1dLXOWkMxM4u1pksiH9n3qCWSlIh5FAtBrJ3/llA2j9hS4
	 N9lrWHQPo9Vm1CT3EnshnqDsez94QlxQR5sBF/00KOnapPUsDrl2vB8P/NidVjCIqL
	 kRUYC6/aw6hcEyCNrte/kPboTnobr4AZ2QUSCZEyM1ZviT6BH5w3+MVBCg169zadQD
	 SbgXhmdIriLzN8YUGmVatRiYEsvoinKbdm+rkLFdWIW4k+uPzcOn0Ka1hDBr2S2EyA
	 zFI0lzi0gJ9/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E15ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166291385332.7700.5547446886301819666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e4f0738562b79a791704e3ba10e5ed3b7d6bcc8927acd91767fb9bbee150df
Date: Sun, 11 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662913853
