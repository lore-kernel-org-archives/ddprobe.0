Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAD663B
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658750212;
	h=To:Subject:From:Message-Id:Date;
	bh=db8qsxiyMsdfH+TgNqeyrXN75wqvy3g+5rKZfN0dELA=;
	b=hsn0LjaaU/fQxhmZ9bD4EESivWrrdXSVo2UBb+r9KiqC7dv1GziZzemXSD+DtLz3
	VA4HiWtr8XH9vskhEgdaH9rdPFcCr7Us4MIcqHdG+u54ZWMVfpD13r+22SlTW9KLZ0k
	qeWvQSAKt/tMnpX+eBdXH4ZY5sbLJ36aUaM3Z3A4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658750212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=db8qsxiyMsdfH+TgNqeyrXN75wqvy3g+5rKZfN0dELA=;
	b=jnn7xAT/sGWYv583t/j8QBZ7DrbwPRyPi1vqVfaPU/cHMSEckMihu8ZxYtGMDPoG
	i6b3mjjJHmQ/4epzN58qEXLl5TwAEdElaZCxb88rZ5ICz7SDL+mdwuBv1e4evEmo7LP
	8f+bxMcJXvVI3/MWyYTzr8fyX0+kwmr/nN/Un88w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182353798fc-edd04152-c55e-41be-b0bd-eb5a20050a6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc443c60cd7f1ef77de0e0da20de7f390c7a2e111ea028ec909c7cfa54e43b67
Date: Mon, 25 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658750212
