Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC843235
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656342412;
	h=To:Subject:From:Message-Id:Date;
	bh=4YOGUiZntoYMYWRtXbDWVoJrI0yEK52ZSWnNiPF6/EY=;
	b=OAF1QOxEAX5CrPzgS77Z+zuU5DxFbcCk22dB2FpIQerhl55dPrZYHItJTpiTN0RM
	0bandXxat75meE3BtBwWSBKk7uGnxEDzu9mM+kA00uI5wnETS4fP1c+Imajqf2IqfqB
	vcvLbA//dZcWzg6O3Mhm+BcByq9YA+c/LW+xoTVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656342412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4YOGUiZntoYMYWRtXbDWVoJrI0yEK52ZSWnNiPF6/EY=;
	b=jB3auA/Or08+AvnhjoXxodoUHvpkjUK92EWLMdpwk3kCQDQiF1In1Cox77L8SnkD
	h3xFYSqcO34wdJTSU1G7KC9Mz2hlNHOXBmXQtsyOfKy5lK2nVms6b0b6vAdU4oBedpj
	fP8Yfbql2ch/NGSSEBlfEZOtaZkz4gK+yAyBAGCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5b37c17-ad5995ec-fe61-48b1-9347-d53128ee9f9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85ef22d551aecd7263038770e70c59c1a6d886b2fb93d66fb744dacfd6883c33
Date: Mon, 27 Jun 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656342412
