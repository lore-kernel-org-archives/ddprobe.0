Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14E2645
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2F1C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664255453;
	bh=IKamiMGpXQ5Zju27N3D+xqwLb5OU7YkCtNvSCljtkOs=;
	h=To:Subject:From:Date:From;
	b=TMdjaPzLGOCFKwHjSpck+kcXVHlYR/dznXzT+8+bF+PVkO5nTSix/jFLnU/1suav9
	 95g4GbrrIW2O4WlCKBXzctZ1/IJYPLtxY7a77YzAAy11NwfPdGR2ZGKx6zyYyvgZX1
	 5LcbXEFEWpYiBcmQ/mrl4p9hAHyIrNVVPu0JQ0EAyZtJ2+gxJoAFkTiL92H2dOlvI7
	 7r0UHlu1Rkh8N5p4wU+LaG5b4W9SLB4m2bW6E6G4/btTJy6Nv9Wd2s8ngjnypZsjQv
	 8IxjJHCbFDP51W4SewAQFG5dO5uNBbzwqfy/QG8A0GGIem7cWyH+xoGELP6vxi0Cuz
	 0RCXf7B8kI4aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A746C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425545335.10514.12360035970263460632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec03fc31f51ffd091a935d253c82e8e5c1de4982a8aa76dada34f08cd6a3872
Date: Tue, 27 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664255453
