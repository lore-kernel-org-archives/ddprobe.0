Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102A9199AD
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWJp4OCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF5BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702724896;
	bh=SWqhE8y26WDahDbudXMiBF6XQ5rQucsnd1TI2N9df+s=;
	h=To:Subject:From:Date:From;
	b=TWJp4OCkMKcxSqCe1U4sEKhtSssPOQXM8foHlYisUV7oS5zLhPeuwTrbSAyJiE4/e
	 BaQPcIT2EpNnUhurjc7j2OqFGDRQcwiM2aXca4daD+epMzOAbpimh9StbupVlEiJLc
	 gHPCK81vydRh0IoT24prEzJ/WDoD3mfLTNMG8ijPKhp7YIe6GE6sRKzjnyTogro0j9
	 x0v94SaN4ZgINgcwx7fnoQb+36W83xlSHM7Bj2+zQD15d2ziyy5ZVKpcmOin2ecQxK
	 DRCqGsTXdZUiVJVvqCn97YobhNhP105mtYIybyBoRR2/KANVxKby1ExmwtuoiYgXxb
	 cscavTu3xvyPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BBAC46CCD
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170272489638.1558.4164254622124216117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908e836271ded0f816845b253465a3b61d6e0aeb6d761dc5a36b8a2b2064d57a
Date: Sat, 16 Dec 2023 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702724896
