Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3A0110B
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF84AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695117308;
	bh=u+sG68aB+qZo2rFClp5KyvFF3n3iGTJmyw0AXVQfjig=;
	h=To:Subject:From:Date:From;
	b=OhfgdUtpY5sczV9veuBIZ6g+Pq5W6Ei6m2bewCgzDkJWKl0D595Rsz7sAhxNLvoi/
	 uYxYIBEtIhGhR2qwLTrYPN/6d+TvEzpjq0zy2J+ejheB/QEJ6X6v+hM6mrx0Ap9kLF
	 RxpEJg8QQPlZW3HXN/hvN31ErycQ8n/Tkit1e41dqa7YUAE+eBpbKjBDtTgkFQv1wF
	 vocMmdY374znZklGt0bUVzDC446kHrHMsA4ASrd9TkxVG3tQNMnglKWIwOi+/eNVtJ
	 9WHrywHBm+iYHG3LZzIVlR1M03IwsN9XvXehzGHX7aVtke+n+GBHAMTSpz+7cCAzHc
	 mAElWobWNChkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A711FCD54AC
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169511730867.27596.8613671472484676468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539d3dc2c389c0e623e16115a007f064cad84d3e80a785318e6d2d7f86b77ac8
Date: Tue, 19 Sep 2023 09:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695117308
