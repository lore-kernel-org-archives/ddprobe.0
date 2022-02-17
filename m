Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E27E3D61
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645118185;
	h=To:Subject:From:Message-Id:Date;
	bh=4XPRjGiEwigdCxKbRcZHwn0grQMA1aJA8sXs+nxWhDg=;
	b=l7Z0ElexPhuVlc/XmwZI2TW1ISn34Z2FED73VHtY+mOZHiQ6TIQ+P+9d975cWhkt
	+N7TKSeI6LjBs0CcEA71E/4AoITCm9Uib6Cqz8gDkpbVgSk0AqGvqTWJxag46Xa/eO0
	IUZ+m+FdI6T7FIVSNm8MVKn0TlcvEy5qVH7tX2dI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645118185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4XPRjGiEwigdCxKbRcZHwn0grQMA1aJA8sXs+nxWhDg=;
	b=OrU3ukTxuSnhy1L76VVKGkijoR8+E63OjwGOaDVeyNaiyHnZ5zPCV5yJBj3TOiT4
	w3E+9d9VC8ERq44cdvL3cDuTmKg9wXf+MpZPVDyNcCI0UdJ5Ql5Kkiau/sPiSNDLoFq
	iAp420Jv0KGtzL8+bLXP21iKRcVGcrG9n00swjXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08af5da3-cbbd598d-88bf-4e66-b7ed-a8c5db0763cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97126b13d1b900723d0abf8649760447fbc763f2c1d23d8158d806a0325730b3
Date: Thu, 17 Feb 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645118184
