Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5252362A
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 03:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE68C433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 03:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690083728;
	bh=9waQcos27ZFIDkzHE0IKubHkQy3e957HVzF4+NFEinU=;
	h=To:Subject:From:Date:From;
	b=JPU4PSphlrmCmFtER70hzrAbRLjVRbyMvJUQiyKk+FAGQ0Ly1fA5lUrKMDHly2iPp
	 mntGrxYlkq80XF58MY8y1o1Bx7OCZNTnMortigEJp+JpM2TvUw78dM0yTlF9I2mb96
	 3I0pbsiHaT9DQNxs7M2uu3G2gRl+HSI6F2Ctw4OMKIwbyKa4h3zKF9AdwD7DUJ1UA5
	 RLznQFCwraoa2RtxAARHHj+tyKp/jgo41Y4D2piddY8q9kURdvUSM7s82SbrXpR4lV
	 w7G0+RnAuvvrB/VaHmdgKG7/JZI/TMaDW7MjXuFaOlC7RDDE6mzKzsIGKwNLfOCakQ
	 a5wVMOqC6PL6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE47C001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 03:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169008372868.32381.3486643815886973793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b8ac3296ef992b58c9ae61bd3093058b60fd00125a8bb164b250297ed374d8
Date: Sun, 23 Jul 2023 03:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690083728
