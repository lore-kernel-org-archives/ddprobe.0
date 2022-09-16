Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5E415A2
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CEA6C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663317053;
	bh=tqkCpHm/qsIZJSGElbNoktAdDiTvOPEKOmrOTEdNgOE=;
	h=To:Subject:From:Date:From;
	b=R2ckUrujCPA5i58d9nSQVPnW3vkkllzPeAhzodJQ1QHvJx19zxW8rEJ61/ForfPEw
	 xNtuuQvxC4eeQVRUK8/SZUJ8BxPMtStOw1ZkrsW3EpDkPHyK1TphKJv5x6LwDFNur5
	 w4f+tZxYKM5B1hBqsV+vm14fS7+C/0t80Y4uG8kfCR1d4lOswbQ215e0nsB6hY2ddc
	 AegqzIkvcTfP+nEsyLUXJzdxKBceqNb+/mWxnbHsGKCYXjt58kD263vlKvQUTS3IzO
	 9sDc2Y07ekBu2uVzGF1YSyDqA/fQzmVA8XqdDas3sPRPj46pITi74t1mz9AsDlABX2
	 oeSGampdL8s9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CA5C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166331705334.17740.16182733699560861492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a755cc7abfe06194f0026d0e9b431b62dcc53713d657cd389f1de2bd82dedd40
Date: Fri, 16 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663317053
