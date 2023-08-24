Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54594288E4
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80CDC433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692881648;
	bh=6wOoYfqTcGdLfdDl0hXXbZV6SUJSqVFydM5pKKtLPqQ=;
	h=To:Subject:From:Date:From;
	b=uDmYYvcLZIe/blYaKki9h0zuMX9BYxWsSLuxU0l9x1B4uwqOJ5VVy+l3pxrJPl+CB
	 3FM8gLFZ0tkrTj5RE3klcupuWYbMLyqb4sFM4F6do5RdLS+sdV04dW/HEcHLDZw1fx
	 DKnzij9UuPPP8TuNEudFPB0nvHMfMu8tvcnzUxx/Of+pFepRom99Op02urEuSRRSPI
	 2v+HZe8RB5Kz52ozGLF8aRzS0Mt0s5psxT7YqKN3MdMtpPoUaL/xTVp63yGqhtbr47
	 P1HOSoagTveoMFPWzMfl6olgnD9/sCpVSzHfLQ9bsTn0wchjKu/4VYo7uZCvp2Gptq
	 6bJQQ787HuSFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF31C27C40
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169288164870.13832.2283169865719207001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746559b6d0b619f6410f946b8d3371292e1811ceaf8dc6a5ec83b1ffdabdce8f
Date: Thu, 24 Aug 2023 12:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692881648
