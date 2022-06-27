Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0C520E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656290212;
	h=To:Subject:From:Message-Id:Date;
	bh=Vi2Yf87VbwicnNmpVU5i3wBMlj6imGPlL1rl6W9Tlho=;
	b=QI6NLUCQqEjvI9u4hJeuykBP+s7PM5RAOAIOZcsfvC1L2zeQ4DzYoLLjHew36hA9
	qsdrU6D0aS/+OV7tN8bNVdIfWjz04zTpy8wz093G2ScyOL/HU8E9TSqDnruPY0aHz4s
	ioPoX11eQO3O3bWmx86mtGjOd2VlcL3+X2JrV6Ig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656290212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vi2Yf87VbwicnNmpVU5i3wBMlj6imGPlL1rl6W9Tlho=;
	b=Vbrdk8R0r/C6tH4ifOYv93SI5EYmkGomimHc9zGn9RmB5kgzo/MbYhg4lPtW0nvc
	yZXH4lvyqWNu5W0QrhFPLWUEuSu7RofCbSBEogqBqABF2ywxbIfQ5qELGnYz2EjxWfe
	46Mrq3zezP7QuqkJuNtATzhIxeOPWDrpG9i0R+tw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a296f9cc-ea0b09e0-f9a0-4d90-88dd-1b84037912a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0076bbf660b4cefee0be3388e65dbcbd9e16ea8d0062f28013294eae33ff97b7
Date: Mon, 27 Jun 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656290212
