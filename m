Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A3963B3
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF2DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669819854;
	bh=OWtg1xpqg2pwea/wOxsVdhFZJhARVa2Nf0WmxBHRRWc=;
	h=To:Subject:From:Date:From;
	b=rbjAxii93MBQq9AQJvfwRaXvNzm0Lm2nrWnSNl4lERZnNG2ELN7J1xIXaPLCGzsxv
	 yoDQXQmDj3MXCcR/4vnx70OmQTcC+CgCpt3YlRkV5RxXJGuL9rh89hQt0zZQ7WKDZy
	 5nVaLtP1Jacj9godhXSyFrcyJK/UoUxDFOhSoAu0w4tkm3Y8+r/OYuH/lkLvLNRtKV
	 1h4LDtUkHb6psFwfjvdXNPpZt4UqyXtkZg1gV2Gzwz4p2zIO3Mjg1Mh1Ugs2kKY103
	 7pOo4nrrJdbijxokdYGlt0W+IVjvr5Ps1K6kV7Y2fYYQG5ZFub+QU4sn805ngo+AiW
	 ktqlKaQoZIeKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B73C4332F
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166981985432.30810.7580873051693926239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47871c5d1f72fbff1029840926abcd6638e047dd958ec1d911b68a52aa623bb
Date: Wed, 30 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669819854
