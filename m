Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DCAA4A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86CB1C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672849887;
	bh=rh2E1zjW1Cynxa0XR77mb2M2+4AvgZfbAvInxb7aqro=;
	h=To:Subject:From:Date:From;
	b=bHnzw3H8g6fQIoHLJt7VeSF3XBCiBSJL2nHi75W2heRteLppBa8P3087fDrAoJthq
	 sYq/RnBbk9uqdc8SyKy5cmX0CICn+M+wH+o2ejDhZoZm9VGFDVlyFosLLAm40WVffy
	 E27/4r0pu1jbyd8E4CU2uVV2TC+OTTDkRUJAnHSwnXK7z1uow3DBp3v/FyQaxQA04f
	 8oFAkNL7p9BfgDFgtAJ7Uk5a8Vj9lKy0eubU5HgWYOqiSYsOPebETcQfxbwGVhwigv
	 KGEXRU0qBXyhefb8ndaM9Uqv23B8o2PByUYQfQbCz73IS9oTScrvlIzTHMU/gBpICA
	 Q5ZmVlMiuZKUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C171C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284988742.28767.4577631295806258294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5de0566096eb7d9f54d1a0d0883132c964efffd410677ba45c71cca4a1a2f8
Date: Wed, 04 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672849887
