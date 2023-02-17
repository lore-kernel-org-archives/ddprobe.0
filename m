Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337EE361
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 02:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18E6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 02:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676600585;
	bh=zWqaTFdCOfdks57XQFnrDTAyapIJRMGKuRg3+CFKsKk=;
	h=To:Subject:From:Date:From;
	b=gVI+ID+TZCO86Zrfn2QwS81AKPYhnkWoXjZCNQQiaFKhvFcYhLa+FKOi03OGhuZrA
	 kkfpreWU3ERf483uQ5Udj4LwTBJ6WnQThC1IBGY2ZuzAg2NiaGw15JpRx5X2rDYJEr
	 JkCW8yxnXgEaEgGmpPpZ4bL7zTgcm4HatxHYJZ+PAT5zOHeGZl3uULHLaHsLbJSCUx
	 YKPvQdt20kSGBlYvfTvJVBaMsPB47379hSgklTie0uVOUEVOp3mAWdxr7/+pDJctGU
	 ofzDbuKe8oRWbGdiIpPItlGfx2bvlegRYntCEc8mumwAnS+kKBhNhpOngDDo0O3fd2
	 JX7t4pWgnSXEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A73C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 02:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167660058573.27904.13727873010962100583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020bb9e8dcecb0ae01845b2d4fcb3fac9b517cb15f96b677d48e8b0af7cbf957
Date: Fri, 17 Feb 2023 02:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676600585
