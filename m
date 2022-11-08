Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C755D19E
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77129C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667869254;
	bh=I6TG1EiO2i0uYE5/Ez7jUTQoMt1IAKOzmhS7U4Sw5e4=;
	h=To:Subject:From:Date:From;
	b=qmkbvLineWf0nP/Gz4f2ep3qC1Buorhs6JIR+sSGq6O1fPAgomESwOwNatXCIeSVq
	 wz3eKYE9nMNZb+h8pXmFRJD++/0eNwUoH+jkYsjg11I3ZZo4gpS7zbqrjbCv2AlIEx
	 E1ZV3A1qrMWqnTfDClbN6oQG4951j+vYl5rX+RM4cQ5hnj6RIG1qeccbtT1jMo1y+q
	 34OmeBfJS2oO53FQ/myO7/WHgNZMgkk6BmRw1v0ZK6Ip+Wq6KFJg5XyhwRZIqZmHTf
	 EWbOLSvjIXVEPwDtuJWduNjtWl/4pGeRelsiKUqeVOuhfu1xLxsDRFf01Pupbqa1GQ
	 jFinCTvyrFAng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE23C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166786925436.29951.1588600407778324801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5a11935c67e6a4e9df1a1b4da08517fa9f9aa98d056bf576844f0fd47d36de
Date: Tue, 08 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667869254
