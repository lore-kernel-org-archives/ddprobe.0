Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC063D510
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02FBC433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672875087;
	bh=ZnGbHcwfvi2/YLrIdP1eYKUjDEf9BNHgJblXYxULeBo=;
	h=To:Subject:From:Date:From;
	b=WmzInSigujk6rRtQlnw80UXUald22M+1BIc23z9pQEqpcvZgh16lFh+LomKpMGLiX
	 amlLiSJG0lNSEW9myiWs8bDcun5SKcgtUKbRp/Dp24nkEJhC9zFNoEvOZwx9HWX+kB
	 qyDrQ/T8sGBV2yh+B5izkkz0wcGWPGo+sWHKBW3Po9xy5mFjiUwmo/ojJnpPO8a0B5
	 JkZS+BO0XXES3P9juJjLRn4nHs152YigFGS4G0OBvsPYr2fFuCtqLrcHl2fFGlNNp9
	 2raiDMg2CUDLY1l+vGee76deJdZEM6QPXXH/THWHitQ2MRiQr2cyoSQaaZ4EnSQVQg
	 fLAdFoaWaMJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 821E3C46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287508748.18205.9988181889648240215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae46b744b33462342b46b480b9e5981700729d188f2a74c1a7bdb43113b8622
Date: Wed, 04 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672875087
