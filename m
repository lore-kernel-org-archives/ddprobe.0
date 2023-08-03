Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB8F25178
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 19:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3C2C433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691092388;
	bh=lGfVAcDBmzWQoaLjfErka6O8diGgjpIPYPu1JZkl7JI=;
	h=To:Subject:From:Date:From;
	b=m1iDmf17J+HGTpIbhoFjFzn7+Gzn8b9tQp7QpMq2VLa+Y1+2FxNjLLnGSM+/uAtUG
	 4xhyqD490qiq3F+MVDcJ9EwJhSwscoLLpiSD19tuadS6atCDIo1qAASmNk9Kny5FNw
	 1Yyxij0BrmVv47kW8Fdxo47EFZj4f+7KVq64xld+lbXpDCBCZWqTqo/jCyHAxI9cDw
	 +anKX4RxG6O9PcvyJgG0VUq4N3hOMxnhXMTBZDLxVu5Q2Tr/8rGWYNZ1Qv2Iu7a0pG
	 vFiCqWdV00ZGZ0BjZmPF62Rz93UaanafL6iPtt75yUIPk6VJ9I8ZvhHddLUJfWBt2T
	 dNq7Byl6YqQwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D31C001DF
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 19:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169109238871.14378.17905557233339464764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577c639d24e8e2b8360c2935504b00e2eef8ee295f5136804663bb97ab1e209a
Date: Thu, 03 Aug 2023 19:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691092388
