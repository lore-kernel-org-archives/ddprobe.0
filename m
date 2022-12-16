Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1ED377
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93947C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671156687;
	bh=9609nNDCbr9o+k0Aga1A5r4rbB+BS+NFAy1v7ZLTwsE=;
	h=To:Subject:From:Date:From;
	b=tF1zN8dTQOfR4j+dK41t2Qx7CTB9tOiWQ3T1kTYtS5hcT0iY2u4XAVHmeGZS7WLJ6
	 WL4274J6/w2SPLTu/qyhEgo9gi2Ng6aSS4G36KeX+GclHwsPPiXb9q4zSxqckVyz3A
	 82C/6IR+yKFMTMySALt4tmr7e8Yv8BXvCnB4UjBvkoDokfBTLPWwn5BR+Fb6WEASM+
	 iXC0XnfRgd31ebP6lFXBzJYFnVolDVZqrCZToX1QqawxfgXAxBFiAuGwfyz+K8/AEf
	 grlXFqNN0Lqy2ODil5mD4EJcq70EEakQNTtrxl/rlItd3GaLB5bxPow4dndS8SQmL/
	 KLdGn9On/a1FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E4D2C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115668750.7630.17499585821826119734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe3bb8086c3ee2185563fb0d9152dfcb2f3a91ce187c660e5bae4d405a6714e
Date: Fri, 16 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671156687
