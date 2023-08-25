Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF6517E8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C149AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692942248;
	bh=eqMZVG/F+kvibtgeZxg4Jrrh7eSfYjGRQnTQIb0Q7Is=;
	h=To:Subject:From:Date:From;
	b=Sq1V1LRJ0LS4RBZnnmbVKeC/xEf4SMDO1aXIuqSiP5zCmu3BQWiC7ou64PdYvt8Z+
	 3DDYcErUxfVRSbvPnvHQHjO7rqUOsmk3aJI03K/4SlvIITvE9kJnGafoGuctD2kNTh
	 +D5avZLNYlzTFrS3kxltfP3RaYhw1nrSYrvyBX+oPLH6xQUavhUA1SYfwYolru87kY
	 t5g1RKVo701OgO6Z2poZ1B+hBs1pOsatToOM4REUgpBaNFDmB4eJ6A2H+/5ueIPQDO
	 b3qhAchNHGSvUFDZwQed1g5QQDPcQWtaZ7LUJu6UG7A0Xhae7SSmOLGHA/ECfLgxW8
	 Les6y+aM+M0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B47C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169294224866.15112.17418092301769176238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e03feb20dbf598010092d594d5b42a8f8dc229d6c167cdd280d36923cb0f369
Date: Fri, 25 Aug 2023 05:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692942248
