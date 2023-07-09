Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51917399
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 00:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C0FC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 00:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688864228;
	bh=fEifJxr4Zke42f7UC7FDBL0X4Qh/CLLP1oedwBnliKQ=;
	h=To:Subject:From:Date:From;
	b=b0YFKAdi7d8UwPRSpVvcIet1cw/sG+7pBJd+SMEBnwP/bQdr9UGdvaemkrqfL3Lzc
	 JlNKMAlL9uasI5DNtZgwfLvlazkV6LlcummsLNiNO25JcegV4ByDjWChSAoOyleMnA
	 5zbER9/zF3XX/+6peH7yZcsDrF4iW7Wg7GgVPBpBtUtuwVPV6zVcKn6sRdKEyUEg0U
	 hSsuPnbBp5jfE8bnt9X6kpF65Mmk9Pe0VQGq3aBorWo0B/M4t3elgw6qHtBS8KN7yS
	 jbZULDFy2WIZfYoIcuKhW2d6wuD3CWpzGDE6n4csuh4mtxarJMSLszLkKeglmLgmnL
	 SUn7dmTwBxuaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A668AEB64DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 00:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168886422866.24624.1555831450769718285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4d674947f66c53b2fb60364cd41c1a041adf3edcffcdc464e7e95bf8ff205b
Date: Sun, 09 Jul 2023 00:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688864228
