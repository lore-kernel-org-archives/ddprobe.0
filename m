Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5EC863B4
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 677DEC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669040454;
	bh=TiPV8nRg12h+mcpKHWYtYmHQLMYz19/uP2HOFxpzIpk=;
	h=To:Subject:From:Date:From;
	b=IRDS0jiSnaz3IkFvcEaKzOvFVLBhRQ/WSRPxVALP6H8t80JXk4r5nyz8GIF/j1DeN
	 WHXpDb5BQGK9RkRMOetHqqZ25Jajvc/n7wIJIbKY6RGyHoximIuc/Tqb7YbTbjZdBN
	 fZiO8CBxdlGnLvqDhTxTD8LEA2xlOxl1L3EcbufU7wVYJTrPjmWc9Quu5rrls29ZoS
	 f6OFFS3zffjkpyKBMeFVkiKXkgC+mvcV418M5mWD4+T/b2KBVuoKc6qOkr4hBBz6/T
	 2Tvw2hcfKKadD+E2U8Y2+a7LoDvTsR3VE8TbdglyuabFACFJkG9Y/qeP5wqHjkZjW/
	 IVvkoBIWMHWTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5086DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166904045432.11794.14305788711200643803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6deee0b2d8a74cf505f5d348916b48d012254e5c1fc56363f880a4c32f674dc6
Date: Mon, 21 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669040454
