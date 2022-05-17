Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCE51103
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 22:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652826839;
	h=To:Subject:From:Message-Id:Date;
	bh=itbk8HCmUzrOAVDA440ky2oDSSzFpJgc2yoXJfmNhqY=;
	b=bDikZrd+kqRrGtelayOzJlNnQEhrKAisKAa2XjdCLXbAF3d5nWhqKlIwYSmC/ZXe
	neensCjmjHjcRtSIf5Og3o4t1DcjCdBi/XhT/BkPI8czgz9il7Ulw2D+DufY5afJdA+
	Hkopr4wltNyVav1Xa5yHVsot7rRXkexZvxSTzQks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652826839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=itbk8HCmUzrOAVDA440ky2oDSSzFpJgc2yoXJfmNhqY=;
	b=GIHAk4SdPqb8xtor9byPWbY+fcT7nre6bt1iafYKWuQFDAIdJipkj9gQ4Med6Djj
	zXXp28XjHngwmC4JIpB/PhfrtqTUtW51zHawD9Eu/WqCEIbhk86DgKlKtlUJOlrvz/U
	UY8Zc2DHsgqRuBHk0x47Mqdka5f3wGR08W+/tka4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d428192d-1f021dfe-d8fa-402e-8c67-eded413e8d8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6398b2a1e3d2c524eff56f396b6eb953d26283c9cfdd0ada400a6e23665fd1d8
Date: Tue, 17 May 2022 22:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652826839
