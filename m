Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015B77E
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 05:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649224378;
	h=To:Subject:From:Message-Id:Date;
	bh=07bpJITMZHYSYfUH2RAcyu4SNvI7SEUfWKZXxOeQ2io=;
	b=H5+8qjdpkD2vXM69Q2vUM4NHdeTOcjlOAufs65ZBka+I7b4wu7Oj6bHtaJmUUm1E
	GfP8iRBQ5DPreeKVkPVno8vZIXTJlRswfxzoQhxatmaF9JX4l5uxZTryGX14X17iu/o
	JBv/zkYoyi8rgBeQDhdbLG1l01Y9bTK8XPob1VU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649224378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=07bpJITMZHYSYfUH2RAcyu4SNvI7SEUfWKZXxOeQ2io=;
	b=QNyA5UaNqQcKsyHHmlddKWnBG70hoPSbTUFVc44yuTbVhR98/unzI1SEtxMC3Xgf
	eM5XEXsYOkRim8cLdBbSK+w91yALMs8Bi1UH0RMJGNYOoS0AeyqI6zqIDzIHHt9HLAN
	9CvCrLWG5SFH3vJ0a+pCzW3BTM+WFFkt+9Qnp0yA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffd6ee77a-fa441672-804d-483f-a392-80039df97df3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02536055c473ccaa8685e090e93314ba7c3ade90c21c192328d507377892f39d
Date: Wed, 6 Apr 2022 05:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649224378
