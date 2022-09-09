Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B938781B
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB34C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662727853;
	bh=CZL0Z52ZjcKtEei0T0OSMFWbyRfBQXhdGk7e+HqjsyI=;
	h=To:Subject:From:Date:From;
	b=HTW8g3bkkNZW1oiVekWvPG04jGvkg/oDoJZXB2pw8xN6IugZOw6RkkP8NMuElPfzv
	 g7JYfiARF7uUcx9LsDhoh8G7frSb72V37B/wM7fIvQU74qQ5fJLtwKcu3262khR2Hv
	 1onuQbABamMbj32gEUXWn6fzW2fQnPRZyKhM/qaICmkYBh/Cd6ySet3F4VvK8fEzf5
	 yvsUwiH8Xvzo8PtjD7TEsbWLDlFr8ziccbfEnEf2xz3GDgFtXuCPJRPZN+m9YamOBH
	 SgofEnS7oJXOGCEdTiQzPgMdmPnC6kuZgZMXhXxENblDjsInVuJOlFMxxJfRRy1zym
	 tSKw3ujnMCChw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AB1ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272785334.1953.18071177192286218455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3a9249144f26476af3f985ed0bc9f1b884ed2c26a47d97014d18fc50baa69f
Date: Fri, 09 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662727853
