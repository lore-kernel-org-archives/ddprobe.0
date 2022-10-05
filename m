Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC38136B
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65D19C433D7
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664967653;
	bh=Ei5lSwVMgA5ZkxdxKm3dBykd3no3/qG8EGlvxDiCsjA=;
	h=To:Subject:From:Date:From;
	b=uCFLXkMIDAJ+/bo/P7oiMJU9r4u65ApZQbHfcIhQduEZv9tEG3E9k29UR3FgOXUJp
	 i55ErWNJs7+KyXK/JCrhph8HKUEwyaaqX46HpIKAqGozJ8EFVk8qP/fLpSNx/JUY9q
	 kPvBa6QM7u+9M+Bv49i8/os83aAX0+t6B54UZisaJ1UafHM9T104HcFmZHJn7pt0en
	 CJPiBVxCOdgQwqUtrDO/b7+EKFodgXdWC90V5+EWPbkoUlv593Q4hfqQpWAecCbjWy
	 Y/YD5xVixIp4mKWUZ+QLbDx/YSM7Ym+JgPPPphr87/Mhf66fKfx8vne6nyRrV6qYwn
	 EU+g565GuwqIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB2AC43217
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166496765331.23627.7504506710677253023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa28cbd944a91c4170a022ff6a560e1cd870a132457d3b046c263719b95ee06
Date: Wed, 05 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664967653
