Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55AE2568
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BA49C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666018253;
	bh=O/7DCooUssq57zXyK2X3/KpRY2YaUG+ekksn73F/rJ0=;
	h=To:Subject:From:Date:From;
	b=jdflC6X02uHI0GGyLSIomuWZvJ4q1e7Qcby5Wjf2AH8ECixa8E47WPi5YZJOCMD3D
	 nPYLQvPiFZ1bqDqQXA3v1395X2GxNKjZthZk1JSPPANnEGt5Crlfs7DWL+f69FV6d6
	 AalfgY4LWDto5Q72BXhldzkFyvppGDRyxoR9Y/kOr1rIz1XOm1xVEZm769Pf997y/P
	 bYtQAMLaQwSTEk2cnYmG1DnwxRfxaJ4OF09wWjGZsxIojr4O45cdQVqml5qSINfeqi
	 cF9anUDVvEVyh5lEkh8RTcSzI32v1UUzv/LJ25kL1NnYQEJIIyA9AnF49yQ2Y3nAHR
	 yCiPFaEwuM4bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C83C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166601825333.10735.8115614909713310633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111698fb6867037701fabdb7a28a9fb37ada151771f1efe9440cbbdeb7a6f947
Date: Mon, 17 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666018253
