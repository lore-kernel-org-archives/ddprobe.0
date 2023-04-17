Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575DC8832
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 19:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F10DBC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 19:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681760346;
	bh=03NjrVLr1+LEHNIN3D4Jb/HjbFoS9pL7YkvMRfFdV/M=;
	h=To:Subject:From:Date:From;
	b=NhTw3OWa+CGRWLzHTdtTxIm+B3PzZ2jrKadHxvdaYWJJanHgkqzeHQFQSqOA48NBB
	 3go96X4fcjvWvyBL5Y92ga44NbTy0dOAhCrwF/lyflvrDi5P7G/t8q535IQ43U1Nee
	 Fa1UxXb/YVbkueodQzOg6O80NhaHx8Ycw13J92ApgBOmjO6E+ZCsllLGNbJrQJVWGe
	 Jbt5GOhl7HEnMbUbqK/7jVTGBC3/BrkHLDoiWxzdGZIUMmt1ekxZi1dnwHf/kLtJB2
	 MU7Z4cPAUcGjkBranlsRGA+YwTpzZddFNqpW4UjDz8ymQrkoDWSzfNZTs1dOP+4wiB
	 lwrj3Y5kcEhCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3E0C77B72
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 19:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168176034582.6673.960040472930689516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1ba33b920b4c8176b2c6c934d990414e09ff1d5004b75bfb0114cf73df854b
Date: Mon, 17 Apr 2023 19:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681760345
