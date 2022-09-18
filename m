Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5880656
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 899AFC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663489253;
	bh=utaRpBbmyGtQy5TH11L6k98cX4kTTR3KqcVg8K9wDLQ=;
	h=To:Subject:From:Date:From;
	b=qw04+Du6KP39WZ+4Flt2LwqvrdNnFjsdqzwAcgOIUibCyE+fMDkQUQHTNUpqwKR+F
	 kQEMRUv8smi7ByYXLBLWSWDpS1hAwV2qd6mcCbc+ODHnGlWT6gXoGGatweXmsSnFR9
	 X/QxxvrDi0d2copWRo+2Q/loiKaFsVxcwfre2GySeVTp1vr/7tU2aXfbw+chlx25b4
	 RQBm4uk1ObVpTI7601nGAEBdtx2VlQHBfiwitPsjr6s1qIs6zs4HIWiSd4DlnvR3rc
	 9G+O0Qe8GdK2RjclCVI3y+bLmu+6ktkBIqgIr2PxYKqxisa+/KUM0eGF9Ecsrf4cIM
	 RydKjnMy9ONJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C302C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166348925343.8499.9188719098143315156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c3ba010fe807348d54b616b415a6c593a3be5377ce4574e59262f87262d389
Date: Sun, 18 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663489253
