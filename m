Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86DCD168B4
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C887EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689943328;
	bh=hqkKpYBde5oZLcIuW3EZHyfQ4Bz1ab7h+BcKzEbHom8=;
	h=To:Subject:From:Date:From;
	b=dgd1LLFQsZSETlKX8Ug6eO11g218xZgK5dEw3ldM0rMYGJnaioPPwA1qG7UKVbDoU
	 zB3ixlmAEG7zPOxNHXzd0W5wUaUiOiSt1m4sLcukal3Y/kj5OOeC7IEOpWuYg8mQYG
	 uXmML3VaAZcAUlbv1YUP/bcExvkxiGqQiP2T38mBXwLOIuUTo1Vd3ysn2HJM4m9TL0
	 yGZ/0SDVUpGuByN5BzY/FyzzzkwhqQzFSfVMFX5cVvN2pr9giMbe2iNN3njKytodrk
	 JC/875wEoQ9W6MV0ECQXTD492yGilNmdxL6yGUMgcYAQScG4LmBMZw7TOLKn7plu/w
	 nRxdE5M10qeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A855DEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168994332867.13054.6936106410898105676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e777e2b11e254f875aa4757b7b51f4799e2e2b6e5f4f04c4b5e79ede845783f
Date: Fri, 21 Jul 2023 12:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689943328
