Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F361363
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656730012;
	h=To:Subject:From:Message-Id:Date;
	bh=sh3DX61A+yFHbMM5YtoJZw3kI2yX3OgJGFEZznokurQ=;
	b=W8qCYVqmJzs5DfbtrS6Pei6ixa0p5CNJvuX8NFBsj12tq6z1NAz4/r79ikMOCrHx
	T6tY/1VUeeC4twEFLicgYzqBB8U29ic6C/G9QB4v53oqkYLvWiehQvnH4puQnuik7li
	wQFdL1ZexYXQRgedCy4RSVC02qfG4Lb+UlGcyER8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656730012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sh3DX61A+yFHbMM5YtoJZw3kI2yX3OgJGFEZznokurQ=;
	b=Clo1o8oCcFcO1/LIn8AaD4/7fXOHzJ2OUxuNLW23r2zF0UH9/KCb5x6gCfruc1qr
	BldUZVh2zGGfJ0+Wow8JRMQipT9Fj+2Mm9cAyrmnbTY5zjaeoY+kXk/tTlmSQdnnLXN
	CzWv6veDHuCCP2CvYSpgFLx6AI9kZsHi59NLklDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bccdca67-873cd69c-f838-4668-8ff0-69e8a4b0d886-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc13bb80a2adf86e038c24b29ef824328e24ed1487b2833fcf06ad259f17a2f5
Date: Sat, 2 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656730012
