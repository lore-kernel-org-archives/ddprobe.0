Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DA37A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 00:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657414012;
	h=To:Subject:From:Message-Id:Date;
	bh=L3gSJxAtE1+Xx+7o7RF73xAon7wmC6Np1bG5gaekOcY=;
	b=QweXZG/Hz09qnh5aVKAw+q43E1KJ0i8KRa+jBo7EjM5GjY+DA8bY4CSQ8KjoL/eA
	h239TV529y/TAIpep3eN6JQ2MLXG7GaEaPvlwbcZwI6jTZ37wxAt1tXvbIS9ddX6s6a
	auvYiJHuGZpMOIMy4y61d70rRV5dS5h35dE+6o4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657414012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L3gSJxAtE1+Xx+7o7RF73xAon7wmC6Np1bG5gaekOcY=;
	b=YM+Bh6eh3gBkmCDGmnirNvIhBz8K/8TW48QsCy0P7gQEAWbv+OsxgtNiZZOOd37T
	G5CEwRPxOlqkaNxQS4gojvvb81EjQaYZigTdEXYqKILV9MDxOgO0rogyz0SBNqlRIX4
	ZhXQ65wITUq31oaJIdCETxPaAQm51RpHSxurhrbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e592cddf-148e5fca-7c9a-4aaf-a2e1-4ea5895c4020-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 797e4771fe956c4185b495135cf634f321bf7582820f6ba6d73a03d70f1dbcba
Date: Sun, 10 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657414012
