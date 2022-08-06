Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA4C1114
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659780652;
	h=To:Subject:From:Message-Id:Date;
	bh=pjy7cA+CnIXlKambZAQhuOHNBmOdHzckXcwSLeYi9Xw=;
	b=F4MPUaagk2ipIaNnYm1ZvTZfLUPOqZ3DGc2hKrz/r/Byghl8XahayVT8Bagt6R6Q
	CBMZJ6UhyUzLQ8STY0+p1S9bGEdjkUfcEijVS100Jfh+9XpUw8ZtELEXDPWh/wudwCy
	j6A//8Zme7hKz5QhEUNwezXqkfk06AnisLG357Xo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659780652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pjy7cA+CnIXlKambZAQhuOHNBmOdHzckXcwSLeYi9Xw=;
	b=Akr5ozGQIiYzsUZ9ZZgiBWgQERLT0uLHfZUKVMAiKAglEHdhr7c11eObfDjMw/QG
	C+5RNtzxVHpvXqEXSd34gDcqwLBt6rI/mfqqkVhL84Yi47EfG0Sw4WWERpASIkWdOga
	YG6RLLf7am67DiXvLQFPkUAWoptPICwR1N9boV4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272a2de18-6202e161-bd38-46ae-826b-8c77ff8b6ed0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b13432640cb7d06f0b59e4da70f266d861bba32cb9ff3268e81479c55e160452
Date: Sat, 6 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659780652
