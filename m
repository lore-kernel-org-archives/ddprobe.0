Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2C520E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CFDDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671193287;
	bh=SSPs6xu43cdQpbJFhCG8/Opl2W14rVprMGerLjerxjw=;
	h=To:Subject:From:Date:From;
	b=POhXvyzL540VPnvxRSDVJF7Keh5GnjZJiyLS8x6ICNM1fJMXosjWdvMcP1zZ3KJVX
	 LgRi3fWG996zBkyUJ60HqfY7oR0KpGx0ZIlN8nGK/W2PjYX5SR7bIwx0coEdY2e/AN
	 hv4/+StlG/C3VBeNZbhMoici3XE/SFdquja32j1NYlwOb1WYfHnZl3KHbOVlgUY8K3
	 49BqPQ/Sg0cEu+UQ1XSdamHjuc8LoKvfsDervT07L+QuxOLjSEEDc2PYgEBV31viEM
	 gQ0OD3P11KYMN6LPYOkIk8ZhaV8CqMWmdkcN5XVyslxTDTUCnji/qNO2NlhyxFUYi5
	 E+SUHoLxrsmdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF41C001B2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119328744.24504.16377609139697757334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61162bc4675183c59fcc6b24baede523649c4519d465faefb0ac55bf581aa6c
Date: Fri, 16 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671193287
