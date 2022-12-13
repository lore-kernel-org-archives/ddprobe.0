Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D600523BC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816A2C433F2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670916687;
	bh=yeBfn7hj9aoBbBLwuBlqlJ3ZM4pZEvvsB7nOyKZU+KE=;
	h=To:Subject:From:Date:From;
	b=eJJOGhnuIZ46TGSOUgo1LCB+abxxlDMNicr0DHm5fEJqMGqu3egwxH8rA8pyyEHn5
	 kQGiVKUB1fXsIJeVWAaV15XTjZVPWUr/5vogqpUWC8gnMSGlAOPdrBDxjj8cTwfZ9q
	 GX/x4/LvMiyIo1xp0Q1Uj+ZUtbcV19f90R2ZyKLqSbvk9A8nFkI8c5rQN9Wzq8WJvB
	 RHDnqVO5QFrwZB7v72mFoInQafX5tq2czYivx5uYrI6Io08FLzP/7tQhIMvS7J3Sbc
	 I3LattmoG3aaWEJYgSpLLb3LY5qvJOfgibzDoAndvucAhiNx5dH+cFHhCqGara0q5Y
	 ZYDmw54vxBC/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BCDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091668738.14130.1019325515691066039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15616c16232d311e4369682412234c0933f0e5de2cd138ffa3c4cc1c507bcf3
Date: Tue, 13 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670916687
