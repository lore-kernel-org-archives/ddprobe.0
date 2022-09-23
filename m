Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E3D4409
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67088C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663956053;
	bh=nY3NQhbEUfH/ec15SExZ+vGsdcdinaw0IePvsF70boQ=;
	h=To:Subject:From:Date:From;
	b=uMH09hX4fZpHOg1rkoJTsJZKfyy9i2ygLZ8xkPNd35h7aHOBpeSMdZdtio8xASuHM
	 3qznHJ5VQCcBvTQpsiW36hTrFr4L+7mReqqysIXK3w18ZHldmNQ/8inv62WmD0wyTT
	 XYpYlL6ar/CZcug3kQOaIz5mxH89HLi55cB6qCerYKGsXV2MNfLWEr/pC+AhY+D0h/
	 YLms/ogUKbk/cmH24S3GI0RcqnUpct9cQd8fZNpFv1lrOsK0MZ7YB4HEtrYrHcYAi3
	 Z3xI7RlbkG0MdmCXG35je6vX8nyC6gHHmqJL8XNYz35LlmItHrLVYHC2sSBBI+M+z6
	 6hzZRB01GIPvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F7E5C07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166395605331.26544.17727974250995704022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28ae7c2faa0092911eaf32e577dc9cca4afdcf0722ba1bebb1f92bec8ba2dd8
Date: Fri, 23 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663956053
