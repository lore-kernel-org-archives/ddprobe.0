Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A583D19511
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 15:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1ABC4C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 15:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686582786;
	bh=qk4lGweVznfey1QB+n7e1+fyq1ykAvFtf6OTs+kpm2E=;
	h=To:Subject:From:Date:From;
	b=oD3mAKsMQgjTRrx6b61tQsX+XKnzlccwfK4M5lSml0V59dEZc8AonxvNw9MF2zXEw
	 vzPWveVzKvy2+B7CLevocDnjeaXeE+aDb7+6ivzuHurXVhuX56kxBBdyMa9WfkNBXx
	 knOVp0C8yc11fvXZtf205fJHHzRZ0+3qyn9PYsY8Y+iBW+L1FJcBFwBPJqjm4MhJwr
	 hXkgP0UkSsxv46ieqs2r1FessszacWbKrtm4zPqGXECMb0LGwlTsHoahTmH7+Q5B0Y
	 9syY+i7CEtDjgl3fiicHljk1XcHV0fEHsznxWn1CCHTqOCiRDiM9JQAwoC5TTpFqnf
	 5h3iwkOPHdWWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED8D4C88CB2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 15:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168658278594.1975.757391167239985815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747e2bece472d8ad08fda2232569b1f2fd570a50b1fe2390318f4e758cf88696
Date: Mon, 12 Jun 2023 15:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686582785
