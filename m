Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1297A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 02:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657852612;
	h=To:Subject:From:Message-Id:Date;
	bh=hevdebIeQnzvXGBSKosQULAze7kpyVs2xbe75mFjPdQ=;
	b=M7SRCs0nlbyktaodbKNJf4E9TuQhHz2IQDZxRNwDsYrs79sfvlBDa6CBY8atslYH
	aVpGPlqYPMhcE7s/sbRzg3er0TVHKZb8RLMvSJ7s+VTY6PpMUgAo9PjaiP4AFSvHWHy
	guFexT0aFt6WpJMGhpfTsGB56vwLjjfjcJFszViU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657852612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hevdebIeQnzvXGBSKosQULAze7kpyVs2xbe75mFjPdQ=;
	b=exdwOySD2taZKDhq5JnWcN6MaGftU1dqxbJSmWdb0I51U/JaF5dW+gsRfzuE2/VP
	P3MYtdJoRxJYfxNJ0XTKwv5y9iD/qOKXYYKBJtuG9Kz4SUij8Od2Zadxes9JIpv/ta6
	IKqdESVJvMGmTd4fa6+0A84jcDK/rZpX0yoODoCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ffb74f16-62a744ed-0d6a-48a9-a31c-41ec3de8e316-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d4d205be80b13bffe3bc66c0e893a248328d98b2c0e9814f408689a2a57adf1
Date: Fri, 15 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657852612
