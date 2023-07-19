Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E081FDF
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 05:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FDCC433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 05:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689744068;
	bh=GtMzywoyeh0PvAU41dWnFFwHZij/4s45R0AeQtZ9WHM=;
	h=To:Subject:From:Date:From;
	b=PhAqYywKc99wEMbj2Vc/fInCJfoRD17R4Il1XeTceN5SS0IvtY2+2lbtr4serQ5Ip
	 ZfRhr0JwDik1l+jD7ZwFYsHvZGliydiugNUiaAVyYVmb5u/s7wMWNRdDmQfRH42Ump
	 h0PlD7vCNFRBLFGfpxFscGJiPzUD5uZ3sKxTzXGuTK4ygvuC5v39N3v475qPxYJqxe
	 3mEseZLy80lvndejTDY6Kt88j15u/9YAGkxsgOZ58h8Pq18xTMmwfZfmkRQt7KbshC
	 IS/pWFsSmo7fdg28aWtgY/m+bu3q9xw9MhkfVqfISSqqJ+JSWtCZe9frq1x2qUuED+
	 lbNPjZjYctm9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8960C001DC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 05:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168974406868.4468.18402753747311465341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4eb4117ba1693d6ae80cb02c508588e6fbabe3572bae9fe0aea39d742558fa
Date: Wed, 19 Jul 2023 05:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689744068
