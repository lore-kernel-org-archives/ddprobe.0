Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121181A725
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlKSNKtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB8CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701100696;
	bh=FhsxuelQtGEyk8rIVw1kKKWqe/Dn3Tq/u/JWFHDt8b8=;
	h=To:Subject:From:Date:From;
	b=MlKSNKtYhfuWsbvVs1Mca2tOjex02nNb42TmIAqNnewRwNGim2SZC682aHl2IPwP8
	 1spNqax/v2gRXhsSA1OAEzGH91N1kthTUp6S7qxDjEJjWlwrBjmz08RdTM4mzdWtya
	 xyfKLRyg/yX4HZtxCdQqthq33EQwmGZt6BMOyyZ6tNL7HjkpVVWOCbsGXqtoh7c+8X
	 PiEyMqVMja54hEza2l9miQEt67WxrEmlDwfBL6A72JMa6eByo1wvH/tlsK/X+/V8eL
	 +/tyVUljM2+tYoPvO3R9s2bjgEAWUxoXdhmKHBDlZrKQbVnjyVxQg0WVrFkXNAEjYV
	 3P+Y1W1Ey8NIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6305FC4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170110069639.22717.1430199466222459318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56657d09b16d11cfac0bd8632c6a6bc7c444668212610a01b85f652060db120
Date: Mon, 27 Nov 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701100696
