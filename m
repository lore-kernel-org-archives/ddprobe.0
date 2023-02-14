Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C6A7C
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 01:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D284AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 01:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676339045;
	bh=YaAXj9z/BR/acr574yKFdZM8gBh86Hvv2GMjEloc7x4=;
	h=To:Subject:From:Date:From;
	b=InOkYSd9MMMC4ED4AD9qU0sWBAE6H3UPwJ+i5latCo7LGCdhGEAPfQccpaBv282ri
	 L3w+zrsCVSYzgQJl8xhG8kQ8HqL6oPMe8gjSJLVlM9XYwcUpeKKsRtjYwHLsfauIu+
	 cs1fjHSP1jmx3pZn3MOE/nL1mtW/ZGgvS87nJYSCcr4EzEhEDFVhKEms4DnQuUcgM+
	 +0F+GqYWueF0C6J9JvKasewziS/0ttaxpKUixa5+RKKIVBV7wt5d7Gac0IcXgpA8Zf
	 c8L3Q2pnjSpFWzqo2GDQv3+C/Gr0s3zlxbFu9s8FGikyR3Lyfm77N26qUE9o1i3X3i
	 jg5NvPVCVWJ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B694AC636CC
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 01:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167633904574.28213.7109113720706137164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bee8fb5af6618de7a4b14c468a7bda4850907141be71d2f4f657042589d26f5
Date: Tue, 14 Feb 2023 01:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676339045
