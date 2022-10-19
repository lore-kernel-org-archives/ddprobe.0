Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77F515A0
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFBBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666154453;
	bh=veqGslgeJldlvj6Jn7Cixv0ly0zZSjK8XoRqp57yJOw=;
	h=To:Subject:From:Date:From;
	b=orUsKSrk80f73Xw0622moO/8LnQ44MZN9JzTSOxbWi0DmMTltOd8MAiStsKUyu6DN
	 +H9wDNIeILQA4sQTOIfz6FX3bPr3I/IkH+MiXiYtK9CMKWyy4TjJY8Z0exTycPZf6x
	 d9XBBaNhvH06OZCFP0cRv+8xTiRnzGyWrv9PnIrXDHJFwpPTKhy9FWOEGXie5RdT0B
	 9ita+52JwPZ4LPoxwakaiAPvvRUlqaK34pLsKydmgxAwUwbO1bXKTRl41YcVk0ZMNT
	 9ya6dlYw6ZJj9vaOGqsg4vTNXQBg2V1KxyPKrY4ca+TSoQ5rb0AtUpDZHouvB5SXxs
	 1MDC9MXhzumcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E49C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166615445332.3348.10854881326107775165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f526f9a35a0c163efea21169d3304e832b4e710ed9689137301432a271eb4f12
Date: Wed, 19 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666154453
