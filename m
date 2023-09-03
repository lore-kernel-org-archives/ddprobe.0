Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7284228ED
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 16:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBAAC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 16:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693757048;
	bh=CpBaghcxf2V2tlrsYjjBF2wU4s4ivyFqEwZRJmJBwYU=;
	h=To:Subject:From:Date:From;
	b=JVk3rP4oQUkunOgZ/fTnTtpm5g8S8aMnamydSIPNe+1LlK4zc7zHAi25LFoKSKwd3
	 jYqRSxTS9hQDuzQdIQ0U9c/U/FQR3GF81L7vcWWVl9I4XFCs5n8LOqFBxL6v6UsBjj
	 ZqEyV+56x5lr6QVE3bnyT2ftnV6XRPtkbVT/AcdQE6wSJDjH+bhl1EsoLhjbwNOkl6
	 lwW1jmevcGVOTmKQZLXVqRmdYNR/yXXMQbz2Df3cyWWpR76m3+byh9J/346vJHJJvO
	 cYcXd/m+LFjLGf9GGwyzozxwQ6IJh0TrLa6/AdyXLVxEOFpmmOnyAXH4BeseFzEVF3
	 JcBtC3yr3fiig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8CDC83F2C
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 16:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169375704869.13808.11579544088887775760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f51e07a285222face86db89679a7a45a20d129009e95e10ec05e247771fe7f
Date: Sun, 03 Sep 2023 16:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693757048
