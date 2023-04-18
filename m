Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500C92904
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00FB8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681836546;
	bh=0Qgx7AvxwIr0bJfRgOyfE8M5QG0GjYjvCJq7Hw4rsrg=;
	h=To:Subject:From:Date:From;
	b=qxt9whErQlBSXjxlbpVoRk4vLh9iEA10rLflHIkGcHDxW8ALS9beqprtm11STNr4V
	 7/Hm6+ei5Y6DX8ByiddFNgOsMbo7IquIfN0aW6EUwz3ZCQoHtSq2ZcFIRya4FrrYCf
	 leXLE+Wun58DzR1lsBQpPPjwgOj1zXdw5wmjA8E9Wgr5UhkdxXQSdmoVdC88KSFbbb
	 SuB6hT920afj2QcwSk7CseTbM2AuPCEGl4tosn+o7KYqlm3TCKhpAtF1rCISiy7Px8
	 Al46p2nbmmPIkcoW50HOqnqettvzNZuNz2pLICrboSpNdMcjmBPKo+ub7e3WEWB7Cp
	 ZfKSvyESP49Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA91AC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168183654581.1082.13325999462807467570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31ea374dff0aa49279d9ac09a09a477d2f650c7ced5de18317f30082e1541fc
Date: Tue, 18 Apr 2023 16:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681836545
