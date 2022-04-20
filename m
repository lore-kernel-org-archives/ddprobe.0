Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA31184A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 13:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650462898;
	h=To:Subject:From:Message-Id:Date;
	bh=jou/3BoKnlDQjX7NXdSi2uVWAy9i9morATd90JGoU2g=;
	b=WLK6HCf4dc1eA1Z5sFDvB6dUr7TNmlav0tg8S3dUGdwtZUQtHlFEncVQrDu60Uwi
	eeDv0UdGcEkP5ObyyRHQluiLQ4VgG3bgMriRb1JiQ8sPtHqmJ8emzrqEkrZS+OO7h3j
	7CfR2RAgKV+KNItRsWdX5w+AoLQ4M9fQgXAyY6SA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650462898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jou/3BoKnlDQjX7NXdSi2uVWAy9i9morATd90JGoU2g=;
	b=gID3FMH+S4MCt1F1KjQdtyKHBvpgM2a6lZ8O7TVyFGswTMSIyKPYVQuJ7wC8viYk
	BncO2gyOvB7obeHopTmJnNZRu2k2OtEGqB4Z3FqXn2vkWCfe9grJT2ilsF5YXjMb5NK
	T5wO6e0jlO9SOEUzhHqdjiYnKeCS/GIKd8TP/1r0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018047413870-76805044-affc-4671-b393-6028d779c134-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e81b61facf12d490ef7ef22984fd28dbe1d37fb68aeedeadfce44790a846eeda
Date: Wed, 20 Apr 2022 13:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650462898
