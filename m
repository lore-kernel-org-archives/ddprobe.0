Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52A6185C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAEBC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673094687;
	bh=gCTxwySKGxLjVy25+IHWQSsgBuiBqAunVVdtMwOq2zo=;
	h=To:Subject:From:Date:From;
	b=Dx/qnrk0N2i5MZ56f7uwjgVCG9UALSnFJc4OX4JyvjXqQOyKn0dRF68cRcpXIoAPS
	 jbnEHybZrbBH/ic20og99zVH+q3A74jYryLlr1s6wif4dWD2HA3ZWAoE5R7SZsV0tT
	 8GscKPLu1pDYGBW9RAGyp3n5MJiRJOJ0mD1PCkP4l8uwPY/A6TcCx/6rpLRiTnCSZD
	 UevI20dUUv2AByDAO6W9U1c41LWj5HCLubJOmEKvy2Dv6238TJ3nsc7GR0uFEDS/Kg
	 6TBzeggfjj6Fjbt/uHzbl92vzsizgCXmHeyFhlJ0lh2Mn3IpMWOfKVbhjo6JFn+jf+
	 ZJIAFc8SbKbrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F239C54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167309468751.32433.14022528734826485558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af0d633d12c13517c4ab3f6c9f5c02349e4a69ec97840daeb8655cea71080a7
Date: Sat, 07 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673094687
