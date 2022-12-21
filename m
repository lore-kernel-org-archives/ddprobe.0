Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E171E23A4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85834C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671619287;
	bh=lVSOrJLdyVHmQbijIMf2kVQgDFLes0BG+2nszg7MvBE=;
	h=To:Subject:From:Date:From;
	b=sjWiP/ISBOqRHRlNRvgeIqmq9i+NvCcuVbFK/AV6Rq+gWT9KrSvSMbpEGdyuVQ2rE
	 PJvEeK0RDzf9oabGAdTzi7l+3GOHTOj7emsKkB2+HzF3+pnpSMCpycyzyh49r9WYvh
	 S5rOhSqQKyh7woRnTFNeYFrI0CuwFL43XnNlOxgTVzV3NL4q0/nPCBoNtnTYS9P1CR
	 t4Iz+e+UyBRr0/aK7TONxpQO5mlX3pi+5uPk/46TK+n5AKIzqMdO3s0Iqdgn4dRrgE
	 oKdCO/RgoTS6tt3OuAZBOjN9jp0cMCZsBl13i1TnSI85g48IWj69mUlFrksyAQ9iA7
	 f7cwb7EJ7ytMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E8D4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161928744.15503.12569905527099676475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318a49bb680afe5f473f95e2b780389d48205cad3664e87cb2bdfedfd48a6749
Date: Wed, 21 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671619287
