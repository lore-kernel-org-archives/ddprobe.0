Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2D2468F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 11:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44E5C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 11:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686049325;
	bh=ue+B9KsMJBHMziCuVwIafsrl2Saos6FLOxPWmS3Yuak=;
	h=To:Subject:From:Date:From;
	b=O7EURRTJib59YGfP5HJrwyIjDz4nWg0Ku5N5CWDQf2vZa6o7yStoeJxYvBuNnopw0
	 6Bd2v9AOv9orQJ9x0nS9XERD4xuQev6uifLzTbrgHhQ8qxgugd90dPuI3YzhpVeWAt
	 TCjkqpNAIxUMvClk+MgmkeGb+XHHFeUi2C1X99+/9Z/R4fYO6Xwl7mmhYRx096du9A
	 OMt2+kBsHEEUkXCAYlX+S7KiZLlBHEUQRLASLqYP3BL+cUnC1AAZCrCBJ+uVg68+Wj
	 Ag15iJJESzupmElptjfOS8+xqRAw3VTQ+GnM3DzWWQbN21P/KOan/1K7iH6GxchldJ
	 lXkM20wDxJoYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC17C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 11:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168604932575.30533.2834609280572048276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bf6540cc531cd6d2d024eb166f1684f0de243ad36af89f5b2c0a41ea4dda9b
Date: Tue, 06 Jun 2023 11:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686049325
