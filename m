Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303D753A8
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 16:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD044C433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 16:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684425965;
	bh=AZy+Br5bmMEEKsKTh6cejv3vLT9VVgASxzyVmG1x0H0=;
	h=To:Subject:From:Date:From;
	b=qUZMz8RwVOYJaAWZbpBRPfCXVmrpVD/L82Db5PDcjZldpPipeEgIk7LXi1QCgwQEe
	 q/Gq4TouKfdZC5RvC3WBpZgLuBgiWBBKZosrfKe+YPiwkxTCzSHaoEXK+f7ST+FQQZ
	 tZdSW9a7w+dKn+4f8qAEpIMX3J5etoywa3wQpXAtxXwVhYbjvJ9TmM6uAe+/Ph+GwT
	 OkEXVt1tuqqAgEfIhkndO4xe6F57dGZ5AfLJEKT6bLhB0zRldpwKlNIGdce8vzCtWd
	 kHDdXNEciKOPXZBEwmjvYJKnm2P4i3DOp6Op/TrCuf+3AvZ2Nvk0A+dw8foGjph3rC
	 qi7SBmfM+QVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A18C77B7A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 16:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168442596573.14767.6356109697438755474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b4d4d4067a5cb09b887514a92cc6db629926e6537ab8ea0347223409f668b9
Date: Thu, 18 May 2023 16:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684425965
