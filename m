Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6097B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFB4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664574053;
	bh=K9xEFLROorz4HagKsjHrBcQQj10jllyClBI5iZxyi3A=;
	h=To:Subject:From:Date:From;
	b=HZKghouGmB04LDge8l4iBbgAPYEUSHFdME6gk7Vhqx1HsxX/WS6DDjDuewr5/VskS
	 Xu5ENEzK3pP1VVj6o3804bFV3OUzK+ohT775KuBxB+BKH/ZOhoZqA0gu/HiqUOmDWd
	 QJ9Qr7syazTVasQkHnp1i3ViX6Se+1f9TL7iQ5rX2vi29A7vUzPTaTHDBsRq059u0L
	 8xHjjWkjDfkoStlBbdGaDfKLBl5LhJ4KuqtHPfGC6gy5eLAXhGvEPVU6fkGyks2l97
	 5nGjRxKagzyraaZqWDJJybaKuSlnTD9svkBmTMZsNVqn9vDPOkCL52DLZnHSNqndlx
	 bFW2BdxYYKPcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5063CC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166457405332.18827.16160596730667317517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ede179f54c88f2f8320510999057e2dac469add9a1698d78505e1220e17ded
Date: Fri, 30 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664574053
