Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35B93C02
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68370C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662396653;
	bh=nN9rcQhNEMCrsxKtCh1kDE/xuqDvAK0f+F+dgi2eEtk=;
	h=To:Subject:From:Date:From;
	b=mYGAj6BhRGa5euiW5kmS8py4pkUIgEL3EM5ibrFxYzTYcOEzI19d+il5uaYSfn4pa
	 fGyiuJ03Ol8h2WgT5em7W8GumI9GaW5jG0CNn5qaty4rTnMKHG0b2qU+iG147aAiCu
	 G6Ii7m2+ZQsJVXSZlK+yxs3mmN/Icp6zlh6X0gQS4UO9X51fpLMbaJnmVgtHu3B+O4
	 bGqLIvP3NLR1qEWY/hqfCtNMHPJy59LyAt4/JSHOYjzYKYHTsZUf6XEaWMwPb4XoY5
	 JqsZNP5ol4W7EGzJ853JYIoKZVnng5iEZOVRN1RYLj0LXXldSu9PP1GzO/paIVWnh4
	 dA4Vw4sPpiOWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9B5ECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166239665331.25279.5944976937249316680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735ea77a37e3422d4e7db2c61f071fa8fd24f7af241b32b5eb4bcc0b67c4ea13
Date: Mon, 05 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662396653
