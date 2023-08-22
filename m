Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D733FE0
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 09:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0862C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 09:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692697449;
	bh=4kXELrtnM+GuRN8FYeM6nIdmax6hcC2MHYyQnmFwNgg=;
	h=To:Subject:From:Date:From;
	b=ATYhjIty2qq0tjUQM8wMHnwcCs3Xds21QpdDJ/nrKefDWbYcBVJzWdPzMYLONsq2b
	 xS576t2+/vGWkyeF4H3GCD57741HrAfLIXmaUkhdCI6CrM1peW5EK2L1TNRjIvroGQ
	 +CxMgTDQH9BFyJIEJ7wi9QDTc4NfWBTI0uWQ0CEgIA7rSmLQN0RL/ncUqssKcoZQCG
	 HcsvdUoK/nec54bi5XiKh/32txb2dzG+EfqIFZ2LO6T0lf4eje1oWHjNFfQXV/m2l7
	 bt8BwYZf1Aiaf9B87hvZIGyPQejII0HGBJl47e3Ovq3Z9qPaIV7Fh0tujNmM89CQ95
	 G1k+H5WJ9IxlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6117EE4993
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 09:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169269744880.22292.4355227361840114674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf37cfae6af4cc1570d9af1c8a8dcf6a247bd478bf1d49d13c09462eb70c6e1
Date: Tue, 22 Aug 2023 09:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692697448
