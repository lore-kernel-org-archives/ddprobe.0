Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3808E8482
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Stxcu87r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA6EC433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699789696;
	bh=AtxUauxxOJEdhshZ0xpuJsvJNitTD+XNZlfXth+9Gbc=;
	h=To:Subject:From:Date:From;
	b=Stxcu87rCuiLkiiXLqxLE6woBQzECNeGf9Rv3Pfyzx3YULGsvkBKG1P9EMg6xpF07
	 Vk4UDLB0qaDhuqCq4tzPNn7UpKF5NidxpVnSJfQb7R95MZ23ZXpHN6sKi812FiaaxC
	 E3ctC0eXXvv5hrsKHw4oBQIcV2JyXFPTdxWFUYCcFK96k6fye7WwPBu2cWbt1FtxUK
	 uWw9LQ+rdAFPtyrEeLsJc6fYkF4w00dIf6RNWVWIZRC2pWy5PtgrE4zvXAIlL388gg
	 1RRESVMELvC3KFy2TgyBix9t8b/uSVX1htoc2Plzm6XUTnbiznfogXN/7jP4YOijJy
	 7yDdPk2Ai9RIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F57CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169978969649.13814.1177434251298765983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e28b0b805fa3e68fc3e76953d66893df589bb913efa4ce851d2b9efa2256309
Date: Sun, 12 Nov 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699789696
