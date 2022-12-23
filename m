Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D687AA48A
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8610FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671817287;
	bh=HbEEfIjcRZW5pmFvYdKcc6c1gCLKdz4itqkXncexh/8=;
	h=To:Subject:From:Date:From;
	b=trPNkgZKgGs17qPhDQ/MUS4xUrl7/Jk0Wy43hSR2KjSTo06FFwU90kSwCW5BBov+f
	 Po2HiTY6p7t7YGPyLbQHRF5SX/AzJnAP4mE+usaZ4Ekb6eEYbN/tS0K0ijGzFqlQaW
	 0dONNyZgFLXYGsxuKRDZcnoFOjnOGsyhskkI80TL1tbSEAAkxRcpP7Sx+71ux/BY85
	 6zVaeRKQou7FK1fbNGbQB7g4TgqohHMiE7y1dYhj9h4dIWf5Ck6gDXZK1BkZ5BOt4k
	 qyYw5JZVFuSNDu1DZfftGgia0maeWv/rQy4+HnwmNZ/z6R8mtC3EN68fg5lXtiX7C+
	 mXTrd2/LhSt/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C41C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181728740.22353.5794530928421664343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eff8678fbc143b47009bc743f9d49dae6cc86f20426c301105adb5274893b1b
Date: Fri, 23 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671817287
