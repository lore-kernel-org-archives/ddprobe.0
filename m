Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D9B187A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E107C43392
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672243287;
	bh=0UWRd9uyml4BK6MCKonV9mghNodOGI6eLu1c9pZMcNc=;
	h=To:Subject:From:Date:From;
	b=evG+WbmWQxl+YdNgIP4VMw4j6xvWh9oxa6nJ31YkFCAFEv2wVXJkz01ZpNtqvT2wj
	 pUkMk9AjlztkcI2NQN1jTS3lMB45zUPjDxU6tl8oUZvY5ekxtZSMcujhUhYSIaAq2q
	 Pd0FZbPSJxoR0/Km+DnBbiYnmePaHD4DmR8+gm/dR/xbDdXx3oAqWoTJ2hcKfocFr6
	 mYz6GIKMRtHtLr8ahWLNlZRt9RPdRf5RsnYoyOCPr1r4lZfFJyzw9drE1q6zO0TSLx
	 PiUqsDKotL97t5ho1beMHWldAN9SJzc1mtZtWjRJ991d9FLFX1MibXRgWOoKIJFVB6
	 IrqlyMm7v2+2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A2BC3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167224328740.24229.15426622373104072866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649da9fe3c5abfc225cb30bdb725759493b1a0351a8e27299a4598a01d157d94
Date: Wed, 28 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672243287
