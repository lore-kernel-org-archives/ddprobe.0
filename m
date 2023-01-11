Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0B717EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B81BC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673428287;
	bh=Jq4G/6YxUO2my9gxR22BU2DMAyLGfaAF0WqSvr72IrE=;
	h=To:Subject:From:Date:From;
	b=OOh9WH4VkbRd6ZelCwdh0VCGA6tEMFPXcvxRdPhmjVknbrNjUeftZ3dYxRSIF1H0l
	 krPc0bk9JJ/Jeb5WSoLA8gcuylCuUn+qmhxCWEmUKE8UANAWSiFhRWZ/KHUlnBpT7l
	 U71OtLT2drwZGMhg8LVG0xn1vpyITSVPGaDl3CWLG6mzImY1oUG5iCvAZ24VaHwr5F
	 jJBy+pmwUEr8W/KT9DVszz7g/hT5KQsDIhMiOA2zrkrthf6y+E92Mkoe1teVxPnQyf
	 OzoPQHBROt8weP9fBTWHjiYwMaO4KnAaQaLtYcVRxAprYdl38F7GvnMeXJRQfpwJaT
	 1j3pvZ6Jvnsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66422C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342828740.23022.18223991307988420860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4abc2af47e32e44f92a180c984bff115988a9aac902c8602aba626b7851606
Date: Wed, 11 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673428287
