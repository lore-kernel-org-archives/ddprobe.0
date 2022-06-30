Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A5B7E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656554212;
	h=To:Subject:From:Message-Id:Date;
	bh=hlgNOtkNJYqLPbt7l+qjF91xUDkbbiY2//q7hkzl88I=;
	b=XS1WcxAyUxDuwzpPZdTYamDwS/RDgKGeWTowK0Z6MiWYdgCFIBsNSY8NlyJpUIRp
	9X4saL66/H74n70Y7pVMBhQWF34TGQaWYasxMgf0GHjJ2Y9CSHfIgnO+YHEnk4xxwBi
	t+3Q+mIt7aSZHQQ8I259GT0Zd2xPCRwf3RTmhnl4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656554212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hlgNOtkNJYqLPbt7l+qjF91xUDkbbiY2//q7hkzl88I=;
	b=WpCpJgltKI863e5SolwrCmou1fYV2jmBPu9JZSaR65d62aCkWHM620F2iLurt3iO
	E5FdSQZtktyPRpm0/fjrE5V9z8iK/o8l7gsw7+dSVgwCVBodwBF3VPR5J99BKlufCwT
	PGIQ57hbaLnBK3BqBmyQiyJxQ+r8wMNzC8GiINLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2534bef-abc9610d-7231-463d-a0ef-ef0b6fcc56c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0015b469170716da719cafcb5419a06efada94d772f5565c160d9c6fd6f7f3c
Date: Thu, 30 Jun 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656554212
