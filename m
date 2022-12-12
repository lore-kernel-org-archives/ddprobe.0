Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B092F58
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B6CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670878287;
	bh=YLBhcPFKxeSvLAziiuzL4//tthxrYWC/2j8mNdWKpVw=;
	h=To:Subject:From:Date:From;
	b=NP+UofSVK1+yJdRMZYpg82R1kMAyUI7eiVz8mMAf4KEJ2tcZrRz7cW6JkRoBR4rvm
	 zKFX93/Vaq3lIo2wwWGnSUJ+LHHdi6z0cySpdhlq3fEph+o6F1KgaI6Y8u2XvN+RaV
	 fE88l45HpfF+IGBvXdpOAVxw0Uw+E7VMGh6Yb4gKas2PwebhOgij0xlaS0Wr9Z2w+u
	 k0qpvsBSQSCoavLF3conmJhbCmp1Q9XETZYa0x3uV4apKkhBzwjIdnQqKBs6Q3Ae7Q
	 61+T2NNBYJe4i7mMjSZZ2EhCsHn09fYfkA3TkNemgclKTeuJEVqClAbNVhaUqU+16p
	 8/gtKfT201adA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB92C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087828737.4653.12069715443999538272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e59f5b7519eb346fa1c6fb9b90121f2b1883563554784e110a458b96500f96
Date: Mon, 12 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670878287
