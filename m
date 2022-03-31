Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2368B7B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 06:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648709938;
	h=To:Subject:From:Message-Id:Date;
	bh=kjlS06Vg3z/j1V7yag5DCHPGuf7oYV9Egynjz0aNt2s=;
	b=IH+erC2HhC7SI8BQ/q6QLacKpXHySVhnrD2py4ZqLhwmo/zfYcjqNEcDKpC20Zme
	NWkjZQ3GVZq3xXuGzDhdYC8oW8V+EXfxEQsbkO4/LFnaJGlRJLjet8CxR7uvpwNeJeU
	VhHfMBDEwIy8ZDjystC+pJPc7qNbFZ96bkHyDhFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648709938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kjlS06Vg3z/j1V7yag5DCHPGuf7oYV9Egynjz0aNt2s=;
	b=fKDsCckSz+YnWSQPhpOtpvoKsTaoALYv+wVp3LUAd+m4JYvaSqK8/Z+h1Vrx5vpf
	bkP1vQjBdwjBGL8uFZ1SFRiywKNwmlpSqkJHp9hoaXUFc8PRJETxTE+uhlC3Z4mV8iQ
	3r5PvFLcJ2mOB76XSc3gC3k5Sm/q+OpzF39/6020=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdec52ce6-9f51f7bb-99d3-4fe1-9ae5-cad646e15367-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c02db536d08f83f6b0ae1b73765f6af353b65d6830a38ad8a316af51cc212eb0
Date: Thu, 31 Mar 2022 06:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648709938
