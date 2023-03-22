Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331DA184
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E15EFC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679444285;
	bh=H+ylEkPMMqrFsFJDT5QalbF/gL4zCBi4du11vigmU1g=;
	h=To:Subject:From:Date:From;
	b=Uct07xmkV2P1nWmlxZUBFZSdbOokhNg1UK6+S8NUigt3l7zS5gxYR9bhi4PnBqTDk
	 GEwEDlNOhPXVwqMwjAsd9JCYYQKuIhmfz1UF9eIS5wKG3k3+RTyqCbll/EvsMCT1hc
	 NiGb4d8zgZM+aYgkV0Qqq52fGK0lrFQs4U2R3Ugm17kNsJHBqvHeL4WxGjdsIyZhAZ
	 p4kSKZghzNlmiJHQQE8o+eGukASEzNXY5fNAKnI2SDsBiJIhyabb+hvf/FWYPeESDL
	 ++YEl4/bl0Kd1drDRMUzgOF1lkTRhgPVt3UPy0JK3TCBl6+si/Nfnl8uoePsX4ULf9
	 zAQjgCGpwd9Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37A2C6FD20
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167944428578.5246.6621084833881688849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ed5b4ac0f8f6cc2f09fc2e80be813bd824a1742234d9e786f82f3f72f7f9f5
Date: Wed, 22 Mar 2023 00:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679444285
