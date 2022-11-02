Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE28801
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65CD7C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667386254;
	bh=UVEB/qgKLMH0CyrRNh2MkdhTFrWrx+4f+iDEaRCumR8=;
	h=To:Subject:From:Date:From;
	b=ZvqyQEZszTCexwHN27KPv1Z0orPOEDQm+uOBUobFvBT3ZR2HL9wMN2A3FJB1S+/SR
	 lNBggdy8ELwIJL3NFqDGubPnqcpoPIlGKxip4AdoienLNH6z8749WJzscZRhQ7h8fA
	 LPu6pfG0KBMAOt3DDcXkpTWO+esXgvxmFbrmhgSI3w3Z1hsXsv+ebvpgAwqLTEueGs
	 oE6pFSoZNSdviJGauPAirhD7oegELID95sGfWQnq9H7XvEujGi+m0WhtDwSyiVFt6M
	 cD3EVaxb4ILu5ZP55Oda2Emb7fuW+JVMyCqA6tm+HeXB7G8tkaIhVqo3cIa4KZVhhE
	 3psBEYGrIcYPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EBD7C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166738625431.13812.3076810133049104471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7644815a528b7f046ffc54f8dc20c6b6e64c7eb4041bd8cc8141cb2f0884eed4
Date: Wed, 02 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667386254
