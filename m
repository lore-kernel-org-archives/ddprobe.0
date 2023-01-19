Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8A92F29
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F661C433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674167487;
	bh=z/dEh2lQReEbg++5/Tti31S0GIDEen30TbSYTmgSa08=;
	h=To:Subject:From:Date:From;
	b=qou3xn/xxbDn8SCpCLnUqDgInVBsE8hv68kmh9OrPurmnMwCQEIXTfmMfvOm/5ze8
	 y/Z0dVGS37uubmRBV0ATGuU1J3D486A0l8IuOC8CUloiJ8GMAMNkQyZetTpXxZ8F0D
	 IbVsT94jYzXFvy7uI3/qyksuEpxJYpJnFgvsq0/t8mMfT5gAq6CqObiJ6/flYrMX+O
	 9FNgD1hz3oUWn67nU+4AFFxQvUYmzNtjkynwQTBs0yT+bh7eaT8nSFq8YL6kw2n3Aw
	 Npc1t8RNB1IQXdEiHuVaRnO/CqXNyjnz2l9T1ZMFcgeYRT+JHymRkwOpp0v7uy99ml
	 uEJg5sQmzbHMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6542CC46467
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167416748740.14711.11572806518246738935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b6330b42473080079a500b8b51b79cc08e94ad9e84759c2884590eaa8ca8dd
Date: Thu, 19 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674167487
