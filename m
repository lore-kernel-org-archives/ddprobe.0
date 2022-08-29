Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07B12C80
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBB6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661784052;
	bh=5JWveF18Gxj2GqcdA0WghTIMLjCez/dKpZRWEOrC6s8=;
	h=To:Subject:From:Date:From;
	b=W7RZtn2JpaKUNSOEEg6feJkQ3L4Ti/OhHwyRuEzYnj867RpMskEyitzr+mIpG5w0u
	 nWlvFUFzynn+RbBjMKcK73Jv3cbZYr3lSpXctoikpULJBAXF7r0LYjeKgswk0oByfQ
	 gNkr9JRj/eIcopQkXwMqGhQxGT3/ZbatJZrmhY7W4vPBzpO9J638+8t7WY3iRYfUvu
	 R3k4UWKZEpV4++u06XKMHlkkVuPHnxi+5I/K6bhsKMZtqgI0XqAkFfkRNyyGWnKQVv
	 tuVtsf6G3Oc4pl5LnF6EgjagnjXW8+HiVA6CqNibHhyu1vMCwF31gcayIF4GOBUB34
	 SuLkStxrzSS0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BDEECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178405233.32068.8917967993698168679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30dfbc81fdb5359d2be73e5386c30efe069ad00be5334ac0bf9c24e0b4b72106
Date: Mon, 29 Aug 2022 14:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661784052
