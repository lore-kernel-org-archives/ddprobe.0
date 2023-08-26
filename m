Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1E537F
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 02:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D328AC433C9
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 02:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693015448;
	bh=agAYOnY/C3GaghBQbFVG6vxBC9kjQ/kSOzk3Ha/1U4k=;
	h=To:Subject:From:Date:From;
	b=kDkDog+ChAU/T8tAMBoBmo0AwIy/AvS+6QZu7yEDuuhC1n2BEctRj4sqysF2LhzS5
	 1hKaURm1KTfqOVHsiQa3k0uWk0y0ZQV4htHw+GXxHQ5xYSY2i/7s7KPw2iqpbD6vJg
	 klvQFstFmELwBLBFC1Xg5r0EzSNhfuTUtFUASNUUIDHPST67h6oOajD8SBKSALiis5
	 MAvZTnWYmKCY5gFYR+3UHYIflaYzEyFarW8dS/DPvqkcupyCbWqKNthbfdRvxLJAQx
	 M3Rq+H6oK1qCQcvrTyfIKDzMJLDxojR9CgOq4WOAZw79Tubla0ww/HHOI7Y+2sKqWx
	 gTs9QCzh3JOdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78E2C83F0C
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 02:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169301544874.18668.2977227418118644209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b5cf27214cae6b22e993e8a6c13deb9fa9cb769ca77802ee673b4aae4a0e32
Date: Sat, 26 Aug 2023 02:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693015448
