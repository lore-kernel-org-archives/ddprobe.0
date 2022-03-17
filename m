Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3D73228
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647557185;
	h=To:Subject:From:Message-Id:Date;
	bh=0xgr8mMnr8b58wKBMcZ+g65ySWLCk/qs0VEgJgRr4qw=;
	b=fa6f+8xbLah9BbSxdSkzm8qG13+Z9rXOjfv6ocbbxt0sy66P5H98NjTn/aBnW0KZ
	D3W+XtpuemYh+VCV85c7nnLaqUb5V3bog/5V/gUIRNVP+9DIqMd2w0rJltmGlAeosqU
	5BUsMEtQJcOytyM8G9WVyqthEzuwJmzFuOelGEZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647557185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0xgr8mMnr8b58wKBMcZ+g65ySWLCk/qs0VEgJgRr4qw=;
	b=Dx7Vi/vMxWbbjFURoTPlnWc4SFQkDs9GxGKclVWkkm5Diyc0GXhCvIs5yKt+4Are
	te1yl6lqR20aJyYkxg5zCRwyeofSxbWi1ivKrIs8IzmzTGneNNB1LbXNpCHWuzUKbpD
	WSB8JdkJ1SSui46v9uK9xVdVkzH8RuGH+uqBr8Ck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a0f8d94-f0b1cfac-cf74-446b-a6ca-da95d482623b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0cef8c2782b7b02dcddf1fb8ba3484e85d41519079f6969ac0724a77e8e9e53
Date: Thu, 17 Mar 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647557184
