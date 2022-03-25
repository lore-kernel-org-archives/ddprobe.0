Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC467E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 05:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648186618;
	h=To:Subject:From:Message-Id:Date;
	bh=CUf0D6JBrBPriy9KDPHe6ac3MTHj6wWty1nvnHAQMdE=;
	b=MowZAhZ8NvS4XwX7p1utSOueLeKzuGkcBIfVr0E6B4YX8i8w0AZpWkluKnam5YIA
	41CaBUblpBmdpqQP0DAx1+QPVWHC5Ud8h2uv8NXm+Oz71YPQLo2jGGo9WQi09L7gzfi
	q41T7exWGuoR6yrACVu3nbwidFNop1dXGrzHOnus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648186618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CUf0D6JBrBPriy9KDPHe6ac3MTHj6wWty1nvnHAQMdE=;
	b=VTWbHr3cizFWx0hkuQvf6xk1s5CTQSB0HuGvcCn9PvoijZaFnxpZUHFsWja5TvhH
	OvO/1KTK0VTBOQ2Jb5kSxs71Z5fEWq91bgwwXtC3bWuRZHqLq9X1ASLR4kjm1z5jhWf
	0A2WTsUJesu0aa6Alc3S8U8lNsBbsKiF3cJ87Xjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbf93f198-d78f9bdb-8281-4752-afd4-641ba39dacca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3c8230b48d0b5626266fe849eab4edeb31d551b15ba1f48ff7e7d2900956653
Date: Fri, 25 Mar 2022 05:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648186618
