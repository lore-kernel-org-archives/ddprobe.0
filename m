Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A26F23A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 07:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 123DAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 07:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674802986;
	bh=fHhsPDPt6WGnZLRB2Dg4ksBAvu2bfMdRZM4qvX/zAuw=;
	h=To:Subject:From:Date:From;
	b=F8VxeNlFmSIAOkCQTi0ERZTm1IczQJHsj3UiK+EJyI6KLITpuY6TPdVPW9wlXaIyJ
	 mmjRwO8SuO9A6I5BKCLFfa9290WP3XH30t+nMQef+WJLUAUbg4RTRq7nNtruQ6z8/b
	 wP1iX0c7TQSku8UIg03LE6FEts/Y7mQdsAB+YrwlY3UjqftSc2xgKflw06JNEr6nkA
	 o59mVbQhsqnE94oT1ARf4vHOcaUgM03h0ZrqouPER+95kgAoTxpRs6RwDbErc2xuZz
	 fVtS2b38yCrzVRF4Rn6cDR5BLla1LWCmewZ1ss15PyAIqGtjb4NpP89T8Uyg/cPAaz
	 ij13r967kJr8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8C65C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 07:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167480298591.28297.11291190023069172983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64baef8b1dbdffc1f466f0c26b7dda1a7291796949fd1e74091ba391b2ed0c5a
Date: Fri, 27 Jan 2023 07:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674802985
