Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD0D10E9
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8950AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672219287;
	bh=8LLD7PC4u6YvK8f2SZrSwh8P2J6S2HpJ9KHr9fPYkiU=;
	h=To:Subject:From:Date:From;
	b=K36RpEZbPKP7FjcYZk1UZc9S65zj4nsCkC+c31ehggIqpEjxVCsAL8a7wU2hlrLae
	 7w0j4cvr+7QjpCKdzzCpkrIEP0hDEBNFGzpp6UVRYb9sWR6TsRzVF4QbuTIAZKvSwt
	 MX8GPtX/cOmp6M/OPSjDEr0Xf8/oqYnzOqqRJqOwa6cCLX9ApPoe+ATs8YNT1NUCQi
	 DPGAtEBX6vCKD6o8nXatCb6OpqDz6wuLVgf3XXuM+bnYdGXGOGAZsY62e/MHB+VWdu
	 wf2DGxCz0D9ViucXN2O98F0lWPtTwbFBsN6cCl5nZLtnEG0/Vag6bVs4F1bE3pO0M0
	 clweJCALJ6GIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67398C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221928741.29614.4429439669527402226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ed937e721002ebbb3f73bc868b022af971ae127e2a798fedbb1a6a57627b91
Date: Wed, 28 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672219287
