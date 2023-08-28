Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB6EEC2
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 07:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7DDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693206248;
	bh=a+0aJgulAZYGhfETtp2ERwqRaKLGNeS5CX3sunRQ3ak=;
	h=To:Subject:From:Date:From;
	b=XFFebxu27QTpCli5AjHoSG7JE3KsOSNH+Se4eoy8rJWRA+D36MEl/OInKsT3ebjO3
	 pGgaDJKUcBKUqkbZVolztVmmPaNEqfQTtYZUbvvyZO40SEylpipjoeEEUaztFmfnyP
	 K4q1ZRrvL+Q5XPLzCRPrvtQnHcHYDYzLSPCHU2P0jylpGO9S+FgRwmU3HMnmKsvw+y
	 CmIDAv0wx1iTX0WYbIsvuzvXVj7NKYZavag0izyrPb0MsB3wS0Ezk6CxvZaNdWvBKL
	 dXSx4lkDMap4IrDBPnyPlse0Zmki2jvuejcfIxaRrXCJwlkpxUSn7vE94bBQrfGlkh
	 wmtvjZqEibQ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2DBC83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 07:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169320624870.23123.1434494196647823831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f48dd6f2c8873752a96b4422d8afd5403739c26309b1ddb62918c0a52c6d97
Date: Mon, 28 Aug 2023 07:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693206248
