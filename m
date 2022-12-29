Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CC01FAF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9482FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672336287;
	bh=KWIwJJZMnE4KVOaAN4KPIfM5c4E6OKHyEHdIM/+Flno=;
	h=To:Subject:From:Date:From;
	b=MJQSKzmPJIAWyPBT/+fpM1m2aZ9nN9fU+quiZflWCnWC+k8c2+ovKzDXRZMZp+3XI
	 5Yh55v8h8xwIp3yRLfu/Y+SP/Aattey2FyyliVpgTi7PKVuIClEddtNQbR6V/zGim0
	 A+IursmZefAgNnEtooH6K8mzvbQw0nGQsDeJOCEiV0KyHDxGCZ5yCLViwTuZFTjPYX
	 9ART6crQqPfTacGQNsYGdigThDABoeIEQ+eHLEqPrRgqWG4FO5rb81GivO1qesxRnJ
	 4NRFsQxQDH7P47K1E7KBznILLTysTIIQlCyjKMKzB7UY+YDq4XvYrw5/zBQSWsDb7O
	 Gy78X/zvb3mDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71915C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167233628745.9686.13146930338112888167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e66a92be7424c2339071acf94633add8741e5f71cd4bf9a01b1a66a31e94d6b
Date: Thu, 29 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672336287
