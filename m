Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1074D7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 11:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655292179;
	h=To:Subject:From:Message-Id:Date;
	bh=y181kS7N7WWnZsDwDE1UjcuZ1qqcp7fr5PwxM4iSLtI=;
	b=XO+35p9wT7j+bKjI3CtwrLt88/7E8X/YaFhbp/nnlXssWNOlO68JfS6XS6ekF3Cb
	wjAg9UPtOSqkKlxPf0oY88Am6pWQbZvlybDdlpHGiN/uqwuHcjS5ZcAPI77tL1hq8Fy
	m1VRmo/fkmovAtkhM0c1k44K3eyfwU8ZduLEKhXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655292179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y181kS7N7WWnZsDwDE1UjcuZ1qqcp7fr5PwxM4iSLtI=;
	b=aqfdC1yluujIJUv6dDAMKI6rTjVkskYqmhYwSW7vjBWhqGiW9mUatsk1ch6z1PxM
	dziUKQUCaII0ab9thDZTaXix2TlnDI7abxE1QS/42fdLTFbH0IuS63mRzES6wGZJtp1
	V0KLRxgqIfvMlB4k5XpT5Mw9s187KkLSGNGY56dI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181671a3308-1e15c9fc-ef76-48a4-994b-3e6944d9960c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f5cdda0305dc258be7b2a95ea135360735c110f02ebf25366450eef50c6b789
Date: Wed, 15 Jun 2022 11:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655292179
