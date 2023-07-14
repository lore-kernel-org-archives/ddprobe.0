Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3844C9E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 22:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC065C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 22:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689373868;
	bh=2ooX4IXG52odhX/NSrsc164wxJ++Lv+O4zPtlGPPyMw=;
	h=To:Subject:From:Date:From;
	b=os7mH/0y010/WJWm/4Mpkm+7p5PUUBKFtkuFEJ8Jv11J8xS+p2uvgAQA4fB1PTBMz
	 4jTQsqjcqHwZe19Ue6bjAgoEDEx2hHuE+E/xrNQbQ9lcy3Hf3fZWXyAIHZ+PCafAuG
	 FsgsEvOnBviDzjB5jRq6PAIvN9Xeubbrsqrf5CDfCviMJLngVCXBL6AgcKRs8pe10I
	 c3wY4+ueteKrEuHkzQlRooKzrCE1IapT6v7KYJ4YH/iEMlN7mRhMDGLoKfJfwldUQE
	 0wKK3QOiQgww9GUjCxfDMf1FoOxkJwwWH5Wi0+0sATz+EE51qBtMk8CpelqUdqR81r
	 Lee6h4aoZrZCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDA0EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 22:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168937386870.20271.2562936792596189699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0740c2bbe847ccbdc17ab629316f173291c9ec4e7c52fae788b80bc5bcfc5b
Date: Fri, 14 Jul 2023 22:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689373868
