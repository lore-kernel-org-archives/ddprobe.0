Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C754693
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq7cM0PU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80178C433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699338496;
	bh=vqMpojapr/pAVLLwnTzUOYL6wOWqAwCUvFj8ZHsRxeA=;
	h=To:Subject:From:Date:From;
	b=Dq7cM0PU8ew+GVX56r8TTDsRPO962GqCM+PZXAGwP0EDf8S/g6TN8QKmF/SDjfkOR
	 POmXSITUt/epDaAp8WgRkHoW4U3SNtNAdkQ7klJHMYptmI1la6TUB0eOeeqPLVTgZd
	 /JGLzPuRTKld5OEM1+Dpxv95rLVlu4cianaLH/o6btJ4+1nTVddB13bcC5hMNl25ta
	 ERb4Vc3OvHIT99k2qmZYMMGcIvYlGOUaUwRuQE5FzGESYJ+a3tWcFaaKCXLc2ND2/9
	 cgnimjGyP370CV1gvhF7JPGsWwM3YHddxms76+n7Eer5zrFJzLY0V/c5WJrjF7SGhA
	 GAgxptEYJ7cWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 634A6C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169933849637.7234.14573736142227574831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3b05fbc546ba0d2dcc8fa5d8b57325afa50a8bbd6ffb95daefa717b2ba015e
Date: Tue, 07 Nov 2023 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699338496
