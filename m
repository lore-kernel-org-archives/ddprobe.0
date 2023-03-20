Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326AF1104
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 07:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE0BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 07:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679298425;
	bh=GQmJuddblHurL9h0O7s25wychB9Jc6g41QTBBlBrTXM=;
	h=To:Subject:From:Date:From;
	b=CslJmzF6Ea8bANvZiOjjVB/YhsyaQ0u9bDi8xRjXFSSIN4XfW6s7IOnhlMdQXpqSt
	 8AWr6gHnIc0cHADIf52iadfxge8rdc3BQw5go/HQcGlnRhtD0KQxdSu2DCkHLYcuTj
	 B+SAWl048BGnVkUOXMI5atxPXNR1Rv1FTF43HRqkkEopCgIOoQ4rK2ZJ5R83ciJjtz
	 jH4PQ5m4cquYua5bkCf16a700tKNLqjSqhidynIxhZHzJOW42deVvR+5bEe572v3am
	 +1RepkN1RSMSCsn11CHAnhzKazFl9SwPcfruaocJewoXJ0wV0sZxLhQK3VX3KP13Yl
	 BT+jOkNv68qfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E86C7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 07:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167929842574.10295.242822476651023973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f96cf0696e889ec0ee9f2cc711117a839a5091f21620251918c24b4bbd7405a
Date: Mon, 20 Mar 2023 07:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679298425
