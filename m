Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8044F7A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658794012;
	h=To:Subject:From:Message-Id:Date;
	bh=V8Vcews1QaTd9tnLCEB96bR1YEIWhNBd+4bWEO5lJWw=;
	b=j/c/N4whhFEQHexASiG0fPobLvK9DPXDXcCDeUWFhwGK5ZxjtbnaZ6PYu/WDocL1
	lnJ0+DUioqW90QZEYJMGQR98VDbFd/8IEy0aM9kjbAgV+i7owJ+oSySRk+tb2+9S7yE
	YTVN+mrphwMRIXRTsX++gQaCHCoMM1ytwQA1BTGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658794012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V8Vcews1QaTd9tnLCEB96bR1YEIWhNBd+4bWEO5lJWw=;
	b=IayTnB+zSqX907b1jPIfYbXW0RXjECjXOqi324Od4st9O2aIeGy9KsQa7Q1SJvUP
	ab2MMkShTs2BMJ6q9JZqCmLh2pF4wDP88pqcJa8B9cO1PdXrlfNau4z0jXlC6ndagiz
	WOvYQSm+5GccgI/XZN5rwEW2fiSo4hFGMcfFqUKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018237d3eebc-bf434b0f-083e-4798-9186-9b67b3dc1296-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89f680878676efe2397f3b6bf4e0c3c6902f74b3202e58e3171c54e2480b30f1
Date: Tue, 26 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658794012
