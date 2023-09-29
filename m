Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CA412B69
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 09:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2891C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 09:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695980768;
	bh=Pi+TzG8iuxcEfIKcA6daKte5rsUN5RT3TF9kt/h8AK4=;
	h=To:Subject:From:Date:From;
	b=L0CuahYTxaBwJ/PS6koyBIBNqFwwX5gvjYECuZ9KNHTNqClTJt+unn82J+0L5gjU3
	 k2krWnTys2ztq8vkDOb0Tawchw3O1N6XuZnh75qkupl+ly4bO2TCvJlCQTtO6hZBWT
	 Rn0nzRJl5KayD0TXeF/rKSCpaUTRQwK/JRtQ6RCiyGYuX8DDSypona/Q4v11PU06aZ
	 6rlCuoqEpiHxSdyMeQARJgY4caPLhEO+eorU8bwgMzeGJPFdKsF8VRTneuTsgr29B3
	 OmIm5kl6SxOkPTX0k6st0fFllw/BwNL5ljD0H94WzkFo4cDMy+oSj4l6kdA1jNRc2a
	 n8GxqO/w//oLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B663BCE7B1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 09:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169598076873.15106.13850143384082066764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b3ac72e802a10e1473da8d51a78e62d7d2654534013c32d3d695819339ed794
Date: Fri, 29 Sep 2023 09:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695980768
