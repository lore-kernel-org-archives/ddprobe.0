Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D2A28EC
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 23:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC5DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 23:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674775385;
	bh=aXeUYV3fD0qxDx9BrI74EK+7zCTvoPu0jaYhUMmEYQY=;
	h=To:Subject:From:Date:From;
	b=RI5OyODEts9Rc9rcs5qtHoQYCA8WQ7CyGfVGVKuvvxFQlJJUyDOtrTeMM4i9bXQcF
	 HofWS4d14HRot7wPCIf1YJoq5RDagQ6X8bOqJUUbkEAOm4yCbI18A+A32op8GnwHJ6
	 Th1neo3Iw44Fx+DqiVX9Q7P6pRslLWeya51YbaQkHs92cGGgvsCQFR4jsKQPlDHO8C
	 nibr7h1tja9tSRKaIkFVpt++Br86vNo0ocG/iifU8NcWaQnSuXxYfQL3i4nJGHvAma
	 WMFUwqyhRsN4UHeyST60bcvQnAa/zjKPUG1HxG/oOSt6yZhEFNDZcm+liz2/RUQsDB
	 Re6Wi9DyaDi7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F13C54EAA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 23:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167477538575.14880.6352787097655098145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a330cdbcb63ae1a99dd8a1aa91635144b45a77f1c247bcf1a4f618a2533669
Date: Thu, 26 Jan 2023 23:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674775385
