Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A16C1362
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 04:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3524C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 04:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678077425;
	bh=NULdkHozLsDnfPmvPMqvbZtmcKv08krg03tDoN+N2ZE=;
	h=To:Subject:From:Date:From;
	b=uMrlegZ1v1bJ1cWkAmjbWFEZ3u35w0ygIwTe+eKCmmLxl/9yRsK+9dXbF63kCoiHg
	 nO+d008uUak984XJLHFkR+4o0EhNADPs1NwFGTNiEZU1aOcd04opOgUwGWmH+fDAhq
	 Qw6/wGheXnNxT4mTnoe4swoLGjI9gPv44IZVB7uQ9KDwBI9jOJV+ER4e2Bm7gb6shK
	 hgr0jT1wqnkEO1p5tNi2XMjYWAPk/0GZEn2nT8YeQ7ufwZpjeNeshloFDKVxEz6Ogx
	 JqEE15llAXN28heG3+t12t34LDV5Y43n6/C+frOYW+26zG8ZcE9LviGTxBUDO43KH9
	 qb5fgwm+U+JsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B34C61DA3
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 04:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167807742577.16491.13081408727000337063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8677fea3f0e85919e68caf9bdb007b325fc9cd7e686a0650fc72786a848b10d7
Date: Mon, 06 Mar 2023 04:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678077425
