Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEAD8BFB
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKy3GnVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 960A4C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704031696;
	bh=XvjBVY3Vb14tCqdU6gPZqAes12yIsAth+L4gLr047to=;
	h=To:Subject:From:Date:From;
	b=SKy3GnVu1e4gW86+e7uah0bVFcM942ytsc0vWMivc2dD9h6SMXOhhuR941pjZj/TS
	 aGepo4LIrGCP3eY9yiaqJI77xpED4W2zW5PcHXJjMC26BTXHKYoeoEqsOntRyiLaoQ
	 dcBCWPjUESG3KcPAecfdgoqTiGwEv9Ng7cNlsC3380aN53U+zZ7Ilh3Z3cFZlP7yxd
	 24ClNos24pf6tBXX2Z46vKtZTxjdJEh2ifMIi5ay4pKm7IPMYNJKNKxfPcM2kFHF+5
	 ubAIiDDit841coadPPkypELedm7oUfqWoveb0TUX+blfMDKFABFH9AvXuLGplqpnsw
	 1tj3WhR/Cck/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79BF5C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170403169647.14909.401533446216513024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae7a9488605ac5607a4ec217513e6dfa83bdee27dc832c2b2db402c5264bded
Date: Sun, 31 Dec 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704031696
