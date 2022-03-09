Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D927E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646828784;
	h=To:Subject:From:Message-Id:Date;
	bh=eNIhncTDeCyk27E9CYeTQMV9lqKZ6lgoM/Mj6vf4JP4=;
	b=joyU+Y94+3O8K/rnMNjpMBtLnELfZfibvYV5lCoqgUa5k3VbTN9X+nCejCXOoozT
	Q519+/DMlKvjPS6x47tCD6TQhHyFjf0VuukIeDHSMrJKTddl5Vj08V8H/bFXMluMu0B
	hHXAfeAgDZ2jhBoGIriz+NhvvP4nQswmaSkzYLvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646828784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eNIhncTDeCyk27E9CYeTQMV9lqKZ6lgoM/Mj6vf4JP4=;
	b=JXoMenAQow9yvyjxCOXzzs/LElzywZKj0NGMM6/v0mUpP6uHQPxvv9g6Hw+cOnBv
	LVsrBjYoieUC26ZjvGLr/wdzXNEwV/LRFxpmbvq6ONGRJtJvRagCOrksdOXxuhnfK6Y
	FNNx/oOyKH44yv323JxV9FFZDyQi57gAJh9hPPOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ea50c84-6ec4d72e-e3ce-4100-b94b-5e79e96c5419-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c4023c58376d6bb80149c6dd38fdbc4fa2ba5097da6ce89b342338da2244e55
Date: Wed, 9 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646828784
