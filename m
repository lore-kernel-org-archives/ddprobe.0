Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA743182
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E6D4C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667905254;
	bh=6vfCf3jsFAQtFU/+J0GarVhPpWovvpn/rZTyfgr7BXA=;
	h=To:Subject:From:Date:From;
	b=Zl2v3S7UpulZCqDGYCLQR9LE04/NvPY2NwFVGtPIwFntlTDQh56F+HuVqvaNt/v4l
	 dDpE60Rwd02nxnWFlt8ZReOrHCh9k/WR7TmffA1uD248b77+7STLDnPgeJN7D6ppw7
	 ahUmSQBa894Q6al5IjGDWmSNkKHW5Z6QXjoV474O7ePA/Bdae28KdvvKhomoQORPNV
	 EVqazz5u+OhqdMOUE6RZJxzOrYi/OxiFgwpSqeWAijQvftOyzBPbzFcG+FKIveehl5
	 BmxOdC1Y4+EkfIelRjL2e0mu4gK8UUieDmamlsGk9Izcej1hcGAr7p/lqfjG8x5W0D
	 Bxw8Sy7b1JLlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60841C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166790525438.29464.2884318748690634086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74288723114f13669912c638a8cda923e5f280ad7ce046df8ca61e7f963189a7
Date: Tue, 08 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667905254
