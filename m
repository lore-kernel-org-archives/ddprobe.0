Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026317A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 01:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653010259;
	h=To:Subject:From:Message-Id:Date;
	bh=teagxEx4Uur1jHqegE5gA11LDmozuWkU8juu0zl7ovQ=;
	b=GTTUDdAinl+XZx7dgCbC6PdJNVFFx2gfvtY0TXk/WM8jhyTKJNuGwCHwyuTNiwtN
	jimlcSqM61ujVKtB3BBajrRhOS27NocI05F359Kll2Ty0y/a6UvWT/hnQXg6q6NS6Bf
	FiROYaEwYgx7j3OFnpRLycLmIJYA/5CcWDP5VSAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653010259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=teagxEx4Uur1jHqegE5gA11LDmozuWkU8juu0zl7ovQ=;
	b=PQqxwFlfusaLMLuFVQcmv2FnGGZEXWWSnSNMVM9YpyYAbMHWspu7vPQRugdZxuL+
	9xmHfpyeDcYLu4mLJxWr4IXtcfZbGKo/1gDTXavZmadrI6+LcAMXW8yZ9Wzh9hQw047
	gf/3sQRJBB34SoqiNqiMLtwFcHjcWkko6Cv1s5AA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df16dd7b-3d23ce74-bd29-4c5e-9c57-9c54b09239e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15003c9675c89f9c28fac766df82132140d2a21939af430ad4c2524dda23afdf
Date: Fri, 20 May 2022 01:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653010259
