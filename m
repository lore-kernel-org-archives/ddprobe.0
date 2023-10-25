Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F9027EFF
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ai9p1/qh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95F0EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698275296;
	bh=cUs90x2oILqEqjf2LgPTB2Oq/DkPRz7OGVCUqfnXFK8=;
	h=To:Subject:From:Date:From;
	b=ai9p1/qht36mTjcthk7LeJ1fEu7l7+VM98Y0zvY8hK7xw+TROQ+RfGhYWzoUtOSYv
	 9sZBx1iduw/HnCz8kOUHBAPuac24lGQbOPjRWUzLnWsx9TpFYW+10jAelGQEqzujpt
	 Zojcj4r0EqGcYVK9JpZSL8v4ySvwn6So13d6yQ0pWq70sm5WyBejwUUUcJq60t5Puz
	 YsEiQ/9WDA/xk5V6PGcKySyNUc64Vgk27RffkEZUkNrMQ5B+FMDHGL8FdpEHk7AscM
	 0CFyJ0133upTdUdIswj4oh1DPArfYWKumqpO+p14lLgck+URkvqj+LyWAgSFpkuhZ1
	 0ZQj129TB/oxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D239C25B6B
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169827529643.23892.17785645047313875210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346f92b7427e7166bb95931059e5fe2171920a1f12ae6d9d198a2b19aceb1486
Date: Wed, 25 Oct 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698275296
