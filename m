Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A402A9D4
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 08:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54A1C433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 08:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684398965;
	bh=+iWBWNglO1ks/3quBDZx69Z+VygXhIrfwfGd0CUFRxE=;
	h=To:Subject:From:Date:From;
	b=rX3SF5l/4CqZtWapOFP3KjsLgzgYZDn0u5uA6HICl8mGrAIn7XvIjZMnoqdv0huzj
	 /Hy3u79v0cgtiwB3mqg5K8IbYmdi4xskaWcLtA7V8ypI9j6ym5tAQenZoGZ+9a/jhS
	 umXaMAC9qCqt7gB7tp2Xi8qqif67AtR/qi4bIYzWtNVTR0FGdIAAbjCy1JySSXyrhN
	 W1ZO771F5QdXem8wMu9t5aER98AfhUqztkOO4Kt5AZ4J/z3HXzFhOPN0CtFY8JfCS1
	 J1nRvSDyFs0ZSL1anlahapIzyK+yvGtTR0S6POSze0D3iwxkxVaWElLHHYkfPDiH45
	 f1QRWnPdZVvQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA83DC7EE22
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 08:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168439896575.7360.13842470747203748609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968a5593251fd535b07790efa6c451896a199771fc4d4ab42c567520fb8204ac
Date: Thu, 18 May 2023 08:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684398965
