Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8D17C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 00:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2BB5C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 00:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682295726;
	bh=eGcRTHNWgejsToOCL/N1+la8hKN/gXNM3Ow11gthoUM=;
	h=To:Subject:From:Date:From;
	b=n/GKxqPzk2ygc8K3AHyII2yyb0KFatiAN1/SFZy1O67+3kbzWdBs0UFn8tghxPAkT
	 mhpiw4exU67JVdRILODJ36mKjIjigfOBG8a19dhY26Nvxge9HYQhsyUwOtXuzFDwiP
	 UpWL9gEJ+/l+LiA1yl7ALDGwCtQMrVu2Pz2ma1gAp8FPcIIaIKCR6qTQhDEVFvCvv5
	 tvaMUIJXiHNsLpIGv8vu5/mdAcJwnDiNowHmEedhvWC2YNOwMmoYB5QIm4LEEQf9FO
	 +SDuY2GqAtuCVHPbTSHM4EOBLrSneYmC6o8b4Adgo7XmEApSvc9Inut/frZhVIqCNU
	 Lhkr7SWNhm8Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCEB9C77B60
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 00:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168229572579.29403.16440997563174457304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3585f65dde3c78c21667d821431e2c80609f2479bcc4ff25152603c6c3387237
Date: Mon, 24 Apr 2023 00:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682295725
