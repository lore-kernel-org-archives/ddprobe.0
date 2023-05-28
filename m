Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A0D5683
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 18:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E078BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 18:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685298545;
	bh=PMgCV1Vupubnv5mDlucmYfspmZkL+T4FU7kIeiCoHNU=;
	h=To:Subject:From:Date:From;
	b=CIp5jXCz+h+9kPs9v6rwgDqF4cwSaneGxz/4pWoQbw/uP/PCHTfoJI8SxEIoG2fgC
	 NcwOciOjRjtrz9ZmdIjv5LjdSJeKXLzM+gUCAhDnFLP7sSk2Y4gFqbyXOYLojXNtO2
	 Eq400HsYJBuioNP8G+vILhfE3/FcoepZHLvLiNcph0u3U6TdNHSpZhX43GWzrCDRDJ
	 d9UAJN28G0qxGcOfY70QAm6OA16g2Jhor6K5tJiaiELkYjRoz2OqaeQWzTe44siytT
	 fRMwg747SWrPIIO1m0PtQg6C8Hp0C84Ua8D4aMARGRiyPARofG8kX3RvaC+/PN/7nX
	 h8QZq9BVo31/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4ACCC77B7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 18:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168529854578.848.18279882824546473023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a505c12d5466f42e8b38167aef0f0265d7cfddc954a0a82ce70d09749e5d8c0
Date: Sun, 28 May 2023 18:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685298545
