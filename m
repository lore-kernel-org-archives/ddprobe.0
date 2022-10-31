Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC30360
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5A0C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667192454;
	bh=4MUQG4TPAabF8bjFnTr1YkJOw5ObjFn/dPcX3oz07WY=;
	h=To:Subject:From:Date:From;
	b=L1t39K81d08oV0UTZ7mv19vsCaSy3GY/kqDemvW4Ri/zkJnduqEUatyVQ7ANte2eJ
	 ENsRbnzPyJj3Bbe2yLrVEVhuzbrB8cCVvc81b7r/cZVSVeRx6u0OfxCvKC8wXBKtkN
	 nbz2sJ+joGTutBQskP+pKIVi+Pm2jeQGfn4xzO8xCQ5ocLOQi24gmCAS26ObvLvKK7
	 Oo6Y61ebySwljIubYEjDAX8W9glFzqfXfoNkG8U/qcJkZsAOpd0tnaYstoK2l/XyeU
	 BgwrUTOWrQNEr/RRGP8b3V3v8IWD+7x3NiUiewh9q/WiXi1xglvmTugzjxU7H4jWg+
	 vvPAEexU9QS+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D4DFA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166719245434.765.7455332004506328102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32369f3f581c38c35537adeb251b7535ca39d9be1607b8fa916461f64631e49
Date: Mon, 31 Oct 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667192454
