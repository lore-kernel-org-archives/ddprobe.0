Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682D33FF5
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645949484;
	h=To:Subject:From:Message-Id:Date;
	bh=H06JWGdgQGMSzbqfep8aElKHvQgW9hXzLhlKygP+hdw=;
	b=P4bZoqMNHpg0q2S3yd84xhctklqht96pH3sIcYXUliWmrw0d7/VXKqnbmApy5zIt
	vstK7DzoBCY+/492nryiNGsNYiYjCOxxnvR5Yxg4kOtonHqiB1pyUG94vt/6qsDgEFC
	aGQSJnbuqUb8P4qw5maYmjKuPpkFjW9rw4NKFm0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645949484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H06JWGdgQGMSzbqfep8aElKHvQgW9hXzLhlKygP+hdw=;
	b=EyMYItFNCKednRD1MUqaHS+eblbrYgw600DcsxqShQ2mfSjB3UBcxLdPCPGylk1c
	RxHtiIuCpJfaYT0Y4ZvO/FERkn/K9emdQyUsyOKW3RxV2sbvnMgewwxfXHHu8PY98Lq
	ug92pRXkK6FmNCkJve29bOlpXXmTXB8e08e50PTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a3bfee7-10a8e3db-9b2c-46a0-b9e6-6e86d0723e4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c3e3bd8fefe540c4cacf375b6ec76d9d721fc8c1a5325f88a743cf9755ad152
Date: Sun, 27 Feb 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645949484
