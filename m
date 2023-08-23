Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588F0C131
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 14:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D912CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 14:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692800648;
	bh=nTCbEly6lrwlSOjXrXUHZnv3MbCD53ZEJFzi02Y4w/0=;
	h=To:Subject:From:Date:From;
	b=Sr8Hs60o72botG7R4WVlgk1OOXxBI5Ippw7amtVvtwQwRPqMGkiTe/0Oq/dmf27fv
	 5vz/hYSB10siRmoeUtoCHlaKKG7juGeDQSPdIuiytCiBs7U4lcYGxJLOpLOwjSWVnf
	 FpWAe8wVw6qS/BcfWizEUr+8inIn/YCPpAFU9xUZjI+ovc0JqOjIepesstBLqTgX7Z
	 0BUY8bjo1jdzPWmnkMzUG2htJcQgwMsJDYSy+19XQwqnn9FlI2dZ8QpOX7kfG6lkZ/
	 Y9O0+1Gc3O8WmYQGAWXl47UHdR3isR/1q0QFoOpr8BLqa0lyBEzKZoqysJNUC9l5PZ
	 L7Q4/1n1T8lJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9932EE49B0
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 14:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169280064874.19904.17585423873602482044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df1afa8f442bf781bc1e1fc2e679121a5e583e94a4910d5f6953069ea2f41d2
Date: Wed, 23 Aug 2023 14:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692800648
