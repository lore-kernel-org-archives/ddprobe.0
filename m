Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DB61B9F
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647333684;
	h=To:Subject:From:Message-Id:Date;
	bh=gt0dd6xi+AAggFkAKdc1cNhxKgx4wT9NQ9bHXuZfnj4=;
	b=YLKBogp7OM1Hr8Esm+fE/AomLUdHP+7dHv6zUZdsUU3jtym2HQOSclBLf9HReVIN
	glk9uIwQB9fNRsmhy3Ti/nI0wEJJaMuYkMOH+wFWtfpOmFIfoN7f6suSeqHIE0eorL7
	BvT2JWBOvv9dlY0d5/hBZeTee8iezoM7pkpcw25k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647333684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gt0dd6xi+AAggFkAKdc1cNhxKgx4wT9NQ9bHXuZfnj4=;
	b=fnpk3dw2pbj+OevjVA3UZmK0KnRmh9i3FnN19h3Ha3xYAisfwDW35031i1pfL/NI
	wsOpYvk5+J++Y+QTW/GM0OtGKooXfzuNHiAD3DgS/3qAqsEOA9CyS6tQwsbEvhEoEkE
	5EZZ1L6RoBFULtdsvNNxV7itSotVhMncZD2s6kGA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8cbd3641-bcf7761e-9be0-43ca-93ad-43576f613fa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d17eae71ab26b670a06d12e3749c2f60df26183f4e66c858559444a7d54c74ad
Date: Tue, 15 Mar 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647333684
