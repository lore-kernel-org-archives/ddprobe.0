Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FAF17E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646996184;
	h=To:Subject:From:Message-Id:Date;
	bh=E7ZXbrNnrLuBZdnmk3sl1548BjhDTxaK+T417tDBHE8=;
	b=WthmE9xZH3omt931t+ctIXBTaDrI0r4aGCy3syULyuw2yZTIgoyZNzka8g8g67MD
	tbzVGDQNohUnWYMQCZgfdhVnt2OKqpk9vYD6IygP/87TRoDd2WJjoJzJW05cAwOcHBu
	XnhiYhoVYE+fjFmQPxvlc+3OSoz+PWoXVfktaJ7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646996184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E7ZXbrNnrLuBZdnmk3sl1548BjhDTxaK+T417tDBHE8=;
	b=US2tavNPX0qfACsBR1cJyTV8kz0dXkcz3OrtQxhQE3RNBnpvZvlRxKHxyOa1Rstc
	zfT3PsBt8wj/EoP+ucFc8oG5ch5QB1AeleL0g91hbvkcec+amJT+5/xMGsGneUqZfXi
	8DtPdhKRaDWmB7a5gAyg85Z3GQfnynv9oIxxQmVk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f789f5ecd-816d13d4-9dc6-466f-9495-ecad30f3c113-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6535ef72c3efae926ec7119dfadaffdf53eadc47e0b9321abc57be271227a379
Date: Fri, 11 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646996184
