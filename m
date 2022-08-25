Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE8A7B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A56DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661406052;
	bh=V7+bA8IcV4bCSPGgcL10OAtQAKiZXEfhGv/QQShTT5k=;
	h=To:Subject:From:Date:From;
	b=bNlh3oZPOnKn4J/USCBrWvlUeDxznuNahqgr/2svkIJzuFNZhdIfG4Db4Urd9+b6D
	 NZNXyPu92TL9PktZ5JZnypNuETkdI6yjGm6ZMRX+9drs1wOQTUU7VkTWtvNcEp2QCo
	 PV/Om6iGfTDuP87yki4w4mG9sKup5+PGsmc5KEKLfwfzfmdAYpiH/8mzAg1IvrHUFW
	 QbetEhhidRVBt1Y+jEOSevPyHhvIxcCYCzowfivuc4MmdnHNUTN9G8FVfChjaf+mAB
	 fD7oc3o2NVx6tr+tlgbqmsb/GY+0PkK18L3ZqANOG3LgBSjJ4KWCE/4TqFp3qEufPg
	 yvhMLJ+XeRlcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C41BC04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140605236.16524.11662738034549038516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00b080ac5cd2025fa1cb010e2fc4c9a5e442f3a4d4deb10886f918bfa433a32
Date: Thu, 25 Aug 2022 05:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661406052
