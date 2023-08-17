Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC8E1097B
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 14:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70D1C433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692281588;
	bh=nkaR2LyPLG0+ozj3InlDn5wKiDGUKRln83xODLHHXC8=;
	h=To:Subject:From:Date:From;
	b=pqYcZcYNc+jAmYRmMLMO3FW/HX4HxKtjAsph/hAbqhNvO0UnAb5nD8krtHLU0EP13
	 UIlwv7UsLVGk/UdK+FPaiUjrNNseEpEKu38fFFzS7WYtPV+eiw6nls1SQK/ZCOCYJq
	 1LhbIwnDRw4J+k+IvAKNv/UD6JT4QFt61MgOXCju7hVn1oyRbVjAMpYB34QxAU8HAO
	 T71pxWfnct6bNj074bGHfLXJBh3rueGCq8AOWuU6EHWZvtnQ46fzHP8jBg7Ys0hb8Z
	 6Of8A33zvFuGjCeGIzik0H2hi+5G4Et2w1RHBgyEueE27a93UubDHtuni6P0rB3k4z
	 0coIzxKZOb54g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84B0C2FC35
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169228158868.20172.1119854620173020290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8faff7cf6b32e70b39591e23f7547ddef3c27e46c0204d3c3fcbf10b74dd1bf
Date: Thu, 17 Aug 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692281588
