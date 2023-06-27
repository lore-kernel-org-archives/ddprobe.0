Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7AD168BC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C672DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687854788;
	bh=sDokdX/rax/nd/ZrfLAS2Rnrmd2sQuQNrwGaQGG/vTQ=;
	h=To:Subject:From:Date:From;
	b=heELfzO73tgt6aGINfElpH7ySBNwVcsJ8YspuBs0Hjt1sxIQM+aXjFe2Iw7mOa8nm
	 vkscnmNuFhYP96xz5IKd7M+go38V2tkhkRW6SqHcZF7fWAHqV8qnWNoa4Hp6tXsZTB
	 QHMWdtEqCiAS+d131R4E/3VkKOP3uEup6JjmRk4Drk3dMFoQUsYRf0plS/krMSXSeY
	 wAg4ZCwrFoRohKSPhvIDl6kyJJgNrsV5sdKLGE+lxKFBW1xWZkJX05HWuG7m7Yx3b7
	 AOTSOASAI7+mxoOV5tyBmnWqabRa/qjYeu+JdeDI4sD0hBGPSWWnWcOgxv44Q07+KF
	 p6ENbx9ludQUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B44EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168785478866.11327.4717049594259413852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f505fedb4e8a89e6659fea37422fe4c3ff712b09b37803e13a355d0bf7dae1
Date: Tue, 27 Jun 2023 08:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687854788
