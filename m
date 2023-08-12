Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4651CCDE
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 14:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C300EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691849588;
	bh=atDw7a5gbXNQMq128YBHaHBCSA6U029kKEG5qiiGnE4=;
	h=To:Subject:From:Date:From;
	b=OmTVfpMCf/fijdggqb7AdjPFy/QE4anEtzkTJIBwQ5dSxcWSTepzL7sorV/Mp8j1e
	 j6lB8DvRANCkLXqGNglAmLMlXflYhfl9uu5S+csQLXDxYsIxNbXIwl9IOTSQNEi+2R
	 pIo24ghqGczW4J6XkpRmUmdAG4pMK6FXVFhPcuBj/FAnyBa3Qlba8D1A0PsKgy1E5S
	 IBneEUHYC7P7t15KF8sVBZESjAOFwWZpvEO/eXUH7mGCLx8HoVMRVJ8QCiLGjDFgpI
	 me/x7hrXNgLeu1LAUTCWKr89uryrqGrtupSc49P5S8PzOXHiUGHqWGeCx9qvlVHmMb
	 Gp+eBRHXJ8VpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EA0C0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169184958867.19140.1974000674326741699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f026435bb1eb6a411906e2f7b92b3478c82f830f895ead30a502e5d89cd19442
Date: Sat, 12 Aug 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691849588
