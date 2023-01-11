Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07A2360
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A833C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673433087;
	bh=TEcCLMtx8j4nYHK3qpK+A9Y0f8N2e3JiLmm4JiejSN8=;
	h=To:Subject:From:Date:From;
	b=m/7hCaon6lURWQQshEO8QRw/qIe1tunADdxh0Xi2Pi7RujQLzFUKNeIFy5EHynWqN
	 Bvr2jKIFfiIO8BM3v9nrWTH5mNhoN43cNsS1DdjY2iTaYS1ebRQNmPSuolVuOezbPT
	 Of6+1ivPcmJLSiQuOzg94R5EMyyb9V0icOVn3ZXhNsvVuIdElphWn2Wy+NBVbxdsKO
	 Dt8+FRA9ysWslMtVe+XzuZEEYSCFyfY/G3g9aIdu/Bjwjrt79aheyCj67tRFWJQR7+
	 zbn6rJ+daqA6drbY/T/raDxgXq6IwckF+947oaNCd8Ii5mBYO/oRJC7rAMgOI7AGIa
	 WcPjmaxq0MwQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691FFC5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167343308741.27045.15666387416373917438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9afd43c08c136ca1d02f86e30273c4914d6128b182885cff678c710fa3c8a7b
Date: Wed, 11 Jan 2023 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673433087
