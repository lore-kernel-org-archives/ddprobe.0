Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D068F7E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711DEC433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669215654;
	bh=JgQy/VWA8lLi7OgRdiNGQQIgMQoixzn4/8kb6UVNq1U=;
	h=To:Subject:From:Date:From;
	b=dJIFZ7rC2FePK2yCzOGIOjqHVvjPYBYco4EEZ2cLJcRPB0HY3CnWqiW0bUjSMkErH
	 bncmzRNv+gTCsWmopVDk7Pf5Ga+tZNKs81L3pmLlm3JoDvY+nUBNg/AkD/t+k1d2AI
	 PF5Cz/VY5BBsUxmow9Ahs5AtgjlG+Yw1wYyHJceiYr1Xfxrt83iZwiOE/J2AYJDzyq
	 IA8xr/quus24fiMrZimvIXZTsQE4UrYSXtfh5UYiACDJSBnDTH3H5i05EAQhSYo4no
	 4aUfadW8eWK80HVdWEgSOy3J1jxhW7IK6/i/vplHu9b8FEbtvYgTsMFvEiVqpXfVwb
	 dxNPQrKmc5HtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54561C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166921565433.24086.4489791641054213883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2e66a2a2ab31c58ab5b6163ae0e683584069d161c2ea28e2118e7f45a8ec78
Date: Wed, 23 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669215654
