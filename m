Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEBD2F22
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B022C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671652887;
	bh=I9+nkptZqiRb69tRXXjhdObtAYKB89wFMDDi9nm38VA=;
	h=To:Subject:From:Date:From;
	b=pnvibcw/ugLxp2hsLPlqwGMEIf3qnaC3JP9Y1imhWeUr8LSf7sVZ747Z0++69+XTq
	 u+Z/ldUCaBTnZ6Us/0epKUY9uc6hj3Q3oFLEELkOvlp9yCCkFN+A71+GFck5GX5fQl
	 q7yj+l/aXPLhA6r6S3uCDnCM1btftrjqCoZZK/PVuLK+FBFWnedtJ+RVgf07eDw4vY
	 3q6W3dw5EDHjrrwyKlePRmyZ0KTkyqbeOa4OW/6rjGa9g5A+65wImCs6Z2TxEyilm3
	 JX8uzRNFURSucxtCXuiVITn2hfnxmC0aYSzFuqAnWFYVaEaBNryRERf74Tdse0oFtE
	 GUNUfEZLwP5Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE31C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165288743.32580.13259131353449863603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55dce15107f731d1fbe7a950c5c89131ccfb5eab1010c68f6c7ed77d1d36e696
Date: Wed, 21 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671652887
