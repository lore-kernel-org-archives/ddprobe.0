Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DFCAFBF6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 21:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F16C0C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688073189;
	bh=97QxfWXTv34C4sctNzQRxRJxIUHTJ/xbdo0TYXum9cU=;
	h=To:Subject:From:Date:From;
	b=obrSJY8m7r+rTSfkSAzY3E3ddmstplklPRV6jhp8rMIqKHohrD+DKZ6ZYzDx5ACb6
	 NtNuQz7/UtkCF71l9aVzTV4bIqosgIlAAjwyamtZohpjW/CF9jyoO1Nowf9cDwR4QE
	 0GDG7DKNcTXp4VvLgyjQZ1lo8ehTqpPfX459tWnn1wqrbV/ab8nu023DjK/3R1y4nV
	 k/XfFIoJYFltrwULsa5mMGFhh1EL6kZ/Kb8lmtZmRkfQey3Kzg3pN1lr7bk08Sk0Q2
	 J9hrVpJ4RwyeUoyM9DL1X+z+gUHhsNsTtaTxfAyab3c3ny0SxUFq+gZJXZhK0CMZov
	 5hKEQILnHCkpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D402CEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 21:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168807318885.2773.16234862455291725251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc011084a278a6ed74a39282924b7067ece2c40f2e3302cce0b2c2e56ca067d9
Date: Thu, 29 Jun 2023 21:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688073188
