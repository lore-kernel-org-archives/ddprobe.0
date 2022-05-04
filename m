Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE26320F7
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 05:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651640878;
	h=To:Subject:From:Message-Id:Date;
	bh=H0SGeFYU6PNtcgKAu/nZwNNbwxi8jEWoNLwO3bO3cl8=;
	b=LLXFZc1sYh8ce8OFZrFzb1h25LKZ0wGLMDOmbehYHFB5AwZbPqBUPQzyvlDui9jI
	iAwAW1rmwefq+bM4QxhdH+HP3JyPsk2hbMjl5daCdyQAVVgQj9sOREoS3cf+lfy29Dg
	4/3aKVk22PXLiE0Z5dEmUZao1C/XczHAZvp0nfXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651640878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H0SGeFYU6PNtcgKAu/nZwNNbwxi8jEWoNLwO3bO3cl8=;
	b=TYcFJJwrwCfCJhzgItZa1kUiYLM/tWV8deC7Yqb/TgFnACK9EuTQWUNDXpyVG552
	k03pi9fA5QHRbl+uolt6TNO0z1IhMH7cfiR4cysPEuOijo3gKs+MIJ7cqsxrCE1SWoP
	EuRklL/HhOpBLxqRoJnBKWQj6Fd6rUhxuCiXy1Q0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808d77c4a4-e91fb573-50a6-4752-9b8e-d1fd3599d3b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e06f3cda770e70c19ed767ced9a5ad7beb0e29eb44394245ee1453ef178b3626
Date: Wed, 4 May 2022 05:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651640878
