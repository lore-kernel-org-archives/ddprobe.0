Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16ADC7F5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 09:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655025719;
	h=To:Subject:From:Message-Id:Date;
	bh=7bWwGqyHEf3YClzVf9CThlBrbb32DQ+2wnL/ICb1PKs=;
	b=GxQieob2J9JVYKgR5QOOvMrjHjZd7/v5uVEGqHBrz+ytFD1W/QaFcOVGK9wvqtRf
	8amCJtccSFwIUr71StBxMLho2m8S7CIxEwz1ZkvXfSwbei4TgA0dNtqpSC32M/5oqHD
	wL0Ie9RDVKfvF3XLR8jclYHGtLRUm7Qt0Rv0oUpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655025719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7bWwGqyHEf3YClzVf9CThlBrbb32DQ+2wnL/ICb1PKs=;
	b=FrUHSjp4nnGMBa4p8tuccygFfhD96957cq9qcQVx5du4ML5Z5MJclmYBeMTPSrS3
	DrJpFL8S78AD1FdNp+kF9YCJgRNQXeHW6lG5+kHLMCfyQKEerv6BBJ7DZaPuIXsSD/5
	3DzVIbDIP0rheyRDWFy0SXh9nZwbz0CKNVkUTuDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181573857f9-0e69116e-3af6-4d56-aad1-3ab8619fca7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 871d86f728318fbc18b21c956ef1b937289dc1351dc93534d752dc4c0b898146
Date: Sun, 12 Jun 2022 09:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655025719
