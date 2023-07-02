Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90741365
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 04:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC26C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 04:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688273049;
	bh=mDYd16vlhU7eWWxNi9Pb3B9+tOAH6rG88j+nW1RSmJY=;
	h=To:Subject:From:Date:From;
	b=GsVxdD2E3gYH1TdEPwlL9lI2KP599ZfjADGs/fclCI9p3pyALIo7oiQTb3hRs8GtM
	 zuBOMMcoL17IK+8KUaIfPiGM+7ofDtUbDOhhZMKavgdkTxWHfyZLqzCtGrZeJVBWLL
	 O/7hMtbEeorC4Wm5vLJA7nBpxDPfm6aK2bLRKd18na66rtvVY0uQ97dkvdIHDiw+9/
	 PM/AvOCo4RtEHJSQl4UObIaY+/JGa4MTVyFr8SXd1RkknJbarTldij+UmqZa4Opohn
	 +voVgkAhXzdl8JHGf3KRb+jlKp2E47zlo4/GRx2MF2YPuH2A5gkGvvS0kyag8yHsXM
	 2X93vmJWPWcRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2B7EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 04:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168827304872.13397.13126951033979031733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adfe3bafa7414efaa534b4b419fb823e92c48930d845e4f15bdc98aa9d8b75d0
Date: Sun, 02 Jul 2023 04:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688273048
