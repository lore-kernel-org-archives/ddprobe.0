Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0CA317C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67EE4C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665626453;
	bh=35VJZnpSKEopN4j7V33/UEZ4/8+ce4kY6YQLu5fC2eY=;
	h=To:Subject:From:Date:From;
	b=ovLonl/KFqyer5X7WfJsVBPOp0zdjo755g8IN0stzOhIbCPaixG63DywN3bkNYz9W
	 slEhPzGFJtjrCtUpWDjvBytaXPH12ninKeMtIKiPPKeG8L8VRmq9GRlqd0+WCXhfuv
	 28eYhyNvuImfdS7vBVZ26P2itk/1MiJufotIh/af0T0T/Jptoi49klutRWYFrzgu+k
	 T0W6LX9MrV0uwRy6GyojaegKpyx8wHc4fE5JIKwLQUMGEjZt7ksX/BPC7aSW+1wN2Z
	 xfeecG8Vds6Z0s/tCTAVulOKAEF3eH7VMewY8+Oqu2mMD7Ta2sqS4HaNkvhZEUOr28
	 PqCXKbSIIUu+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED5DC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562645331.32298.7594914341056601638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97694163b30b0c9ccef871ff7fa66b6c5d5e770dd4caae0fbacb953335c9c58
Date: Thu, 13 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665626453
