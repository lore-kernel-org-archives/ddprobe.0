Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4489AA939
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 19:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1182C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 19:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678821486;
	bh=oQIMOzwVfLOvJuR+p2/oTrRwIb60nXP9qXqGZPQU1GY=;
	h=To:Subject:From:Date:From;
	b=lZ7E72/xYUS0TzbxsOr9Xt1/sZZz4YRboiCQrjSdAt9kikYSiy9MmyUQBSy6n+aTk
	 rB855gKsUP3XQQOeDc4apmZ5QlpAwDGdPWU2LXVdPr7+kg3m6oR0bUy0Gu2NAqx4Kv
	 GuAA/dDvJt4IHjmB9j2cQ5FwU7wUBCgK7HhaClkBfBS9EAwoivJ0GiUPGOhMhm3vmb
	 K8VOxGBcXmANJu5E1tjf6jwsxkYQmSXJSUCWbnuBxi9/BFyH6TGAy8PkY3h4HxZG73
	 Yr03LjSaMndtqdtK8Mbdja7TDVW8YDOzFuy5EnXm1c+LGe5yDqe4iEmlAcBlSj1dq2
	 CW8n+U4II4GBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D710CC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 19:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167882148585.2167.9614820233836546696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160bd3688b921d3d088dd3788d9d376f3507a40ad17111308964c07fe2b2bf1b
Date: Tue, 14 Mar 2023 19:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678821485
