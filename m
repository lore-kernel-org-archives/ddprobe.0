Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA03433CF
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F4D4C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664312453;
	bh=i8DQqvAG1RLDdvzP8B1WP0nV+BjNCsRNwVfSb1RSccI=;
	h=To:Subject:From:Date:From;
	b=XCGC9YhCbudXSPEn3OTW7+uJgthSRHhI3lCV4DmexYLIxncj6TyhPOoOkAPyXomRl
	 stDuHg7A7lhDqhG3BIMf8il8oChSp2TzsM4HvZ8VL4oSYQRDwCKsTWo+FDmv9lDcju
	 LXLvLSi85iweXW8Z2or0GtptFaNxR2pgPv+js6wSH6WWMhSVLEhZKRKmbIoEwCAIzQ
	 Zk9vCBwScc+fG/5qWWFAEDNSB22a0JoVhBGEz7aWUrwLMOXwz7buUBLp17pqkgT4ph
	 9okrEuoehC13wJO1miFN87IMVDnG9EhWM7uF9mIwRlldb/ALdyWez+Sov4Xur0q0pM
	 tnj8C48CgoW/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C79C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166431245333.9202.13336401427722212305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b70f1cad117b8a35642595cd0c5ee6f2b19bcb65bf80c3feb97b80c52b5ba5
Date: Tue, 27 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664312453
