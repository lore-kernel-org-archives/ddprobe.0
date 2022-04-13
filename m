Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1837B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 00:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649810638;
	h=To:Subject:From:Message-Id:Date;
	bh=kFyuy/M5lhk1qebUSORpRfwrZs8PGJN1KN3W1f+oBDk=;
	b=ctnDC5yOn5nCB5Uiv3m3faM4rV2NidjSt4tBZCL/08TRsxfrsZh9uda3AQBILCwX
	riziB3hDH1qJG2HCjYS1cbrcheM+2keo9a/hduU1rkmL5FfIP/SCrD93kYgvsvtBHlZ
	1iJgHgx623H1BiLtJoTY1WM62iVLuAEBHiNo7iKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649810638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kFyuy/M5lhk1qebUSORpRfwrZs8PGJN1KN3W1f+oBDk=;
	b=atb+hfEqVqdNQDXaLYcjrB0AUdp5/nlnfmNKJ95AM5W1sn8WZ4wJ2Hl4iERpLfCp
	P4OvRZcaz7f6wLqaANQbJ+WmXUJLuwj+rnkQg9aL84s+sv5LCzPTP17/j9hBUQ8773g
	xL5znnMkTmuOH6lEaedSjnX29Wh9GYN5sFm6PUOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180206085c6-d36c50a0-1d7a-44ad-8faa-8b816a806141-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66e63209c41d52d9788447ee08ae8ba1f88ed399138a2edbd818e6d1f46d21d3
Date: Wed, 13 Apr 2022 00:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649810638
