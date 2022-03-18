Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7568C6444
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647645984;
	h=To:Subject:From:Message-Id:Date;
	bh=KmKjdtz7zZ2TH1NK9O6lI8c0MyoAxUSvV9GRQv9s8CE=;
	b=WW0svQooTz7TO9m9oIgpPa0QXH8zd3Gj0YOQ50HP0NbwMAI/mWsKMpZttgaInLpT
	T4lPfGdD8jHuhq2UvX53E66WXBjrCi/P9ykal1nPIplykUX1bnHsLLAq+0VoRHha1Ov
	Au0PxbN6Av5WF1/C7HoqoOc/EncX7j5u/Qfbg8cw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647645984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KmKjdtz7zZ2TH1NK9O6lI8c0MyoAxUSvV9GRQv9s8CE=;
	b=MnM6NTIMmSIjjOQB8vl/3sWW1wCHbXnly/mfO6ltVlXbygtN2gXPPKKbBLigUOaN
	Vkeyvx+kCDjeWaP9wiuNrr/pVYxom2LckSZy8rV6mNJhnNekF58oAtFj+Xz3sXR06ni
	Nwx+QSgJM4yit7Gs6dJYiN/FWGZw0Ie69XfSR044=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f5a87cb-4b9d09b7-6424-4f75-bc06-ab38c0737d82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14e052712985e8f4644bd5f4f9ee669811fa1a26d54eafbd4e715552a2338571
Date: Fri, 18 Mar 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647645984
