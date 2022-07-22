Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150CC23AA
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658478412;
	h=To:Subject:From:Message-Id:Date;
	bh=kXJREYYvfixue0hJDN4xp8zLWcwu25nQ2VUin+TYF+M=;
	b=RRvpZnys/mpfRrkRUXajUPuQS+81BAShiCxjHHSSt6hLrvW9gAGMfG9iOQb/z1dG
	kAPWcaG5hCR4ZHWaiaThMP01e+yHXqsX7Ajd7esVFnwR2H2cfH4Z0E2HCOEl+SUeqdI
	bC+f76uCIim3DmiW2jKlCyjF5Td0hzp9jKp9dhNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658478412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kXJREYYvfixue0hJDN4xp8zLWcwu25nQ2VUin+TYF+M=;
	b=W8Zdq2CItH8dCFISL39rxYWNLykQg0UOrEnDN/xgzFfpi+Kk4weNOJ1+03FEM8Ct
	4JXlct2/IXUVlEl4xRwEdRSm2PQy3g4gNedxOpgyzjuaV0E5bcJW8RfIxnsjJPGTI1q
	K4GN8XQzN0K45oLHsuIfF8vmDcMdXZcso4A1LekA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182250441eb-4e8fff84-400a-4b44-9134-06f32f5fd949-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a97040ebf2d9fac991f945d4f2c05c5245f34b8b98fa81c937b5efc617783bc
Date: Fri, 22 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658478412
