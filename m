Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9647C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30EAC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687679588;
	bh=qpCyrHrPNQPRbHGIRDBP8QtqIF6zQZiXyxaKJn7rn9o=;
	h=To:Subject:From:Date:From;
	b=sD4EV6cQwCBmPJQ3f4AZ+OmSRu4iCn4a6Y7gANtNgu5z4vGl71Dq1ddGmQSLnEmOK
	 KpmusU910o6W12Nk9EVCrBoEKffxSz6xkD+muqLvx5rrl4F8GT9sAstJRu9v+9fVQS
	 4hiDoPVcXiyBJh/k7IIKnuL/sAAianp6sLzEIKbQF5gQDN8cd5HRx8n+zsFBGhPp+7
	 Yj6F48yTdOFQ+bjG9yRVVo1Fy/V6Pb91Bj/nwQ52+DxIsDoGr0yn+jewgR/heMcdmM
	 58ZoXvXTJ6FFLMYP1N5n9llwORQAa/KAxGHLwM1ZENXU3aggXMRxXAIXUIORrMDWVM
	 iAQGAmV9gq8YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DCBEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767958875.31244.17605212002654380245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa795be41547b5cab2a5bcae8c3260599b3f7200d6cdd54d205ef91baba8e5c
Date: Sun, 25 Jun 2023 07:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687679588
