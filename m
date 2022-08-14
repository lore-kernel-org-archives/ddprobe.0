Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781E07EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660442452;
	h=To:Subject:From:Message-Id:Date;
	bh=XpuU2MTuBw86nA9JC1UGLlyk50ut/k8fyPlvqGuD258=;
	b=U7q5LyAXSC45nlETfpVdHua5z+Q9TkghgbgEE6LTS+8zoRWveKRMvxme0kNCg0CN
	JXrFrBwtEMDftwcZX5TF/qnzvRsPGOWhx68ST0oQNbywQDEEbDeAa5Z3R2zID0hCAeq
	FiPx6VvDAIzUQHxEtcbmhRJq0xLNWFIwGjwVXcUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660442452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XpuU2MTuBw86nA9JC1UGLlyk50ut/k8fyPlvqGuD258=;
	b=asXCslRKY2nXB5B3wuUUsut+GFBkKC9dwsUEV1q/uVRZxxMXZK1oRYp9g8rlKzdF
	q9exoCrvwPfKRApF+HcQ5z4yU+m11X27CwduIsD8fSg4q49chXVI8d6zfBarxeXc84B
	BUYP7stAo+MB9s56HMJgM+CMZvFVJr7x0PGCI9lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a15224b-e56eb489-2cbd-46a9-983d-f7cc20cc95e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff276c879684a631bb4c0b82d324075ac7f9fb1d8887fa717b825b1cf00ca212
Date: Sun, 14 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660442452
