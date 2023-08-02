Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD1D7485
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 13:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3418C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 13:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690983728;
	bh=8KfpwNUR+qSZ0Nl8/Ld7b55L/E8/sXnXOsqWDpNxrWQ=;
	h=To:Subject:From:Date:From;
	b=uCgttlSKzhai8fHgSPCF5gVjNlWbU+QhE0p9KcnmDjjpYcdw6ZKid9jME1fVwa9Mi
	 hVCQoT4MiV20LhIBU/CcehN+IeCZcyMfBQXge8cWqd7TPOsbAjSp6kGcU7fbysYubJ
	 tb+zbpa9f+FUMJl0s7SpZLeiWppTiRqqrqrJHVthYsmb+jF7/bDzd0E865kq6J6WFQ
	 7CCj+dGolOH83G9cyYyXVedTNfFkWXOMmQFg6nzvmJR6o4/V6ppIsK/O77u0Xjugxy
	 nnHHIOQs5MgRrN1FEfK68tYUaPr/rHdYi9PNuL4pr40uhM0repZ7LfxDF72hNMs9vy
	 M0SJAc9Cl3clQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8ADC001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 13:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169098372868.27416.3567946954698560299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e26f032ab2abed4f574126728a8144de9ba3ace0809b1bfbd1e6ad69d31519
Date: Wed, 02 Aug 2023 13:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690983728
