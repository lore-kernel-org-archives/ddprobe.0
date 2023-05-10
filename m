Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD0021CED
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 22:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E719AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 22:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683759185;
	bh=9AfkNo0BnEWP3SpRDupzZ2e78J2ASFD1AMkQXxnzr3w=;
	h=To:Subject:From:Date:From;
	b=qOp2kTmId7tMGFPo8zD1RrZRL5pcQYQHEtj3Qxd2mAIIqgVDWp48CuBFQv3E4y92B
	 FD7E+ufJiNCDCiyBF4M7FyPbLskqBrscKhvrPMUkcZgrwAyfIlAkBU70Wl5HRbPMVD
	 kIR+vEHO8jN+dvn4yaL2rInxHRJ78tfT1X72rCc5BqO1UpuskJcvuk4K8GEO8LxM3o
	 ua2RzDGf/hbUyzfk9AlhF/12kl22n81VmegnMZmhgKiEYjRfwELcrHvxenY/Vucmx0
	 bwTLaYln6Y0PzVbZigaIG4EkwXnQ6RFnxM7t/IsLcKw+cjTDWQ2dSUQgBE75DCBclO
	 +oLt0/5kc7IUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF892C7EE22
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 22:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168375918577.23409.17952793006744142299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ad130ccb1cafe645e02656265f56739f4a745907028ded422e342cfd964b072
Date: Wed, 10 May 2023 22:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683759185
