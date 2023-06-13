Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CDF522B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 14:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25DFC433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 14:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686665228;
	bh=4tBsxeAgZjkWvN/PMIxe3cr4uCUUJKPQwPbVJ6FArIQ=;
	h=To:Subject:From:Date:From;
	b=G9Tu0LRlD/M2yw2Dm1WNupcQQt/JILAVFxlZHhr0QGd0xof0avVRJIvMk9iqNE6+T
	 1Y3tWBJYXK7YKLhUBSCSpWUJaScjbqans0Z7OrJh87PCI5JzODy38gQvBF8ljEaZYM
	 L3jsoY/0axQ/6CKUQRzPEM4f/v3b2DxZq5Me4xEMwOkr3mn+CWJnNnOLHKhBg8KdEE
	 Aq2aTV3bR15BuMDXstMpQafLhJVbwXQ+lxNcfncAwr3XIvIOg0YB/cyk4o95OrayKo
	 JV2doTrDcBIO+CZss8xSptMO8t1/5WROvCU8CvElmb1Zy2hGo4jt7RGmx9N6bSjhvJ
	 jKTLtUR3W5Wbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A467FEB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 14:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168666522866.8151.16843599669661159123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ac0c9afe16395670f93f6aa0058195c84da4203e15f8130d11804a3a08a236
Date: Tue, 13 Jun 2023 14:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686665228
