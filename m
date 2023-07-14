Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4744806
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 02:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 38B86C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 02:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689300609;
	bh=I/65zUck7058MJRKP/KWQMRSFN57eU/ekV7KKIfPhhM=;
	h=To:Subject:From:Date:From;
	b=MdOHXvCs+0JV0gzrzeTWXx8fGEMNCy9XOmwOV3Hn641WW+iriZhhSCW7+WLraTPRW
	 sLPUmAIyVfI5M1Xi+qoxEAz4MnFToUBRdviyb9KAu2D00oV4/belZ5IJiGTTQIsVWA
	 O5SwpLxPy33IIBt40TJTG90UFJTF58BYY/O49/UuNNOsvTYc6+afYgPgPL9m7523vG
	 5PQ1ucSTJN/rFrNdzo0fXr8i6swR7C3p4daqHLR3ZalCHEB+3qYaXRRTYzIy1b/c+X
	 QalQUYZ5LI5RlO0xdAX89INZMForTxkFtpYVR0vx6qoeJeFy2kgEmk6iYCx8dHwFDT
	 9mumQRhrlCigw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1686BEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 02:10:09 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168930060906.13064.13614152855821739353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f941276cee90fccce6c88cebc245d0a8169d6257a761ef8fe17cbb1c1ad6b5a
Date: Fri, 14 Jul 2023 02:10:09 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689300609
