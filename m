Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98192523E
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 21:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA82AC4339B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 21:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685740086;
	bh=c9WngLo9rJwRkwWFK10KWLnCeXr9hwvpilCFjLlGOs8=;
	h=To:Subject:From:Date:From;
	b=R58Rw+YiMYWjc1sxM5jfsEty8BYzOh/b8FkC46jRmTStxRmsuteFbW+pp+gwTB894
	 KqWcIWIRbC3gnGGKVz14VkpsAwpJyggyGDAlQC1fKQoS6Z8jWuTOmAXU71fp3wrmTm
	 DmFxOiNpvDtpXjQfJ2SbKSCKu7METOpDVslvqYDzYM4hlj20nSSoe2C+iBcw9LoLxV
	 H9PU/7913XvRf9sI9SyYFqTHcmU/vqXSDfYvkMnhfzbwXI0ZT0yPnYP3z5eQkZ75G7
	 P9M4b67S9/9MwdsaZhpWHoeES4i/8dX+v8er5+dy/0qbt6IEs7MCDRWNUT1gERBplF
	 /zh/3a15SBBEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5F4C77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 21:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168574008577.14224.9675045088516969616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce49898a4dc8bb1adc69497c22b8ee2eddcb41e569840d7affbf26ac2f75c29
Date: Fri, 02 Jun 2023 21:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685740085
