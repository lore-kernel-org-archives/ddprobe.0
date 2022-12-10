Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E8DEBC
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83450C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670644887;
	bh=ayzJOhUbX8raV5I6vnPa+lG3ew3xXmfSOr1VmLkFTzs=;
	h=To:Subject:From:Date:From;
	b=GYnT0ZzOV7+ARtBia0M7YTnzjSJaI100FKGatbX2ZV6TZEMUvGSLMkd5ZuQURwxXZ
	 yt2RPIdRqxWJ0ONkdyjpRA+Nt/cq97TT6ZgMnZm6Lv7wY4LnOH1ekmXGvYMfOHE9AT
	 vk2lxEDb1Ix5+tkew82w1FfW9ia90puZyj9BZFJ8mBi++Dif+NIFKcEhh5ZR8cksZH
	 EMmcDua+X9PTUwvFlYWQZxpi2FEqr19jxH7UpU0LzhZm1PdOCYvlpQIvNSSKS458ZM
	 v0bycLIDEBMiwlnZkpL2t6wPCltk7OI6lyISCtubmJjROeM2YyQsOQ4xC0VV9VbcsO
	 Js3BtwDLCKt3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64989C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064488740.8453.7744841527382000399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83767b4fe64949d809fe48954956c65e1c55f7c83cf99b896c5d1397d9614189
Date: Sat, 10 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670644887
