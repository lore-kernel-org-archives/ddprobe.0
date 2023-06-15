Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3A02E0C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 17:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98C2C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 17:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686848948;
	bh=teBYagdWbv6f9L0duwrehRGGLJxaqfIdYdKkNIF+/ic=;
	h=To:Subject:From:Date:From;
	b=knA1xk65JDjf6hbKJ5WckHNYhsu9h83Qlbmbgp/A1PHW6orN+2+FnVhxpJK8Rfpn9
	 pWjVXFEOO24Kd/Wwk5gxbJygnKTHUthaTB7zZZC9NJRPPPZaGn6MzXE7mC28vtGXDZ
	 SnE6sqe3TL4/sBBFNWLM3RAyuFooJA2FfNd/nPYFuMu7ohtGVfEwS80y0W7kLYdrcI
	 IXMpaNwlmnlbvdfd/zBHNVUDvif70kC/dzjNxCMsNOQRJkLbzfsJ+epPbPe0QydkU1
	 QYBb8kJllIClhck5ZC3gN7D8Nuj2qVPscVjN7dorfVBhA+hVn3HV0DcKUQqjIwum8E
	 Rth5CPumkqiag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C06EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 17:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168684894872.15309.10488299944280908097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a093f7293aae3c8aa409f8817e6b3df9c2dd27f069b5b19e8d95b00d8a21e9
Date: Thu, 15 Jun 2023 17:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686848948
