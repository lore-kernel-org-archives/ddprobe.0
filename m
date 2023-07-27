Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E0F107AD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 10:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD104C433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 10:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690452128;
	bh=78QFMQ6MM1dXMbaWYJd1GMxWhGJAxDHFPBjq3hUCnmo=;
	h=To:Subject:From:Date:From;
	b=hsgfZ7POPEJzRlLZMcVA+wjFGp25UpwdgknTDx/25PIF9FqC3D6g3VCstzl3j+Hr0
	 HnzdlnAIlN+lvE6oEhU1tteFZtx7FFujAGY/tC04e7XZ7rmSnunmXN51mFEd9o0gW0
	 uEHkHV7eYk1kMwEY/YRAhAVXlvLdQGBrtNbZf00jkFGcQIsvN2mqxe47Zt/JC0CMDQ
	 KjWbO+h2y+/PkXh6keKZdDqVabqrj9VJuaeYwlg1/Yn1rl8kaf0hdQqj59uENv4s/F
	 Jx5uwkwEVcLULkWMysgnxKi/QxM81eJnhqNhri1HXZPxx6PlsM5AmCB3/5VjczkaCi
	 gS3r5QVwt3PJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD767C0015E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 10:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169045212876.13988.14627649348641791351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a0eb3cae624f0343b07e1d63687a56107e6eb03d0238ef2dfac233e6213bcf
Date: Thu, 27 Jul 2023 10:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690452128
