Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B6E23A5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E945C433B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661493652;
	bh=QaWIBKQ4xTBpEfKBmVuDXYsZRSNLm1t1B+ocX0sSQmM=;
	h=To:Subject:From:Date:From;
	b=sbHSc1QN8JsmFG+fKX4GPZtHVDYcyT7EXXh+jO6Cn1ZkAeRDLtxqW2Jqlj6Fvcijf
	 2pZBjiKGHrOT8npvsn5QwLTpAc7XVagpqAbFyrUnxMgGB/iyiVqp56i6LMQdyLsX5f
	 8D76CQVPayQv3VEzX0fzPAQxsfalO0gsK6u1rjLXGibm4H7JxMhCqLGb49yotJQKcM
	 zM24a130P5KFazdSUhkDm/7LqwvR/aZlx2dT75dkBxaYbIspvWaqm/w+KyLdzcp83h
	 PjVvxHnIt64008fI2LzkeoCf4gNci4sFJQnVUr1SXK7jC5KpOOa2pemBV4SERfxIwY
	 ehSVqQ196dmGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62878ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149365239.29162.656583475450414912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952690d50e303658f8e43b01cccecbb5f85180a604cc3dacbfda26831405edb5
Date: Fri, 26 Aug 2022 06:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661493652
