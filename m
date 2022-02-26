Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C057C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645863685;
	h=To:Subject:From:Message-Id:Date;
	bh=A/h6NZWDmqO0QpwNt3f6HVUv5+CoxDtIZhUy8RW2ot0=;
	b=FrXHOCobNPxx1g/VsIvkUgzn7HfP7bdXyuzxVt8aSGAqH3bUIiEaff29R/34IBFA
	/fL37CUVe+TcZ8k4sQS0ngbarEBwc5Ns0MBePTGO5e5kts9W/JKqnv5q5tnwYr4ydHp
	LuBUNqO1kZV2jcyxwhY1ZkwOdO7c3GFcLPGYDEJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645863685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A/h6NZWDmqO0QpwNt3f6HVUv5+CoxDtIZhUy8RW2ot0=;
	b=PfYx88M62YwApQkFfErLxhpbNu/FNzEH2Eq4w48E9Nx+mPiO4VFrGBazELpU8S4u
	g83sle/jUHVxRfCmvRcLKZTZlFBh+4h+odt8HR+dfDAleWF6jM85kKT/EMi62feIdkS
	fGL24nW6mu3spaoAuYtA/o4qDsU7L2lTagcn/TTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f351ecaa6-01a3e24a-8c5e-47a9-a212-00033e0e5f65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ed959c1fa8e3394c3c09e81e32dfbdcecb3b2b8546c67fd4cbb8d646f23b8f1
Date: Sat, 26 Feb 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645863684
