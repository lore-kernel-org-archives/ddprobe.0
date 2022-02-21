Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2BB6149
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645407085;
	h=To:Subject:From:Message-Id:Date;
	bh=2EwwbTM0TURADBicow5IWuzUsaCIB3+Ueej0ISNlHPM=;
	b=LA5Kb4zZAQw2VZcE0QgaKoUAhNO/5OlW+QhPg6kQmXH7sZMNSTBiL4QKuAXvsxFi
	AtE+3cPmPX0uyhnw7fBbRvUM9k9kecFu7kkwXZRGLr5hzkRYyo89myM46ltOENL81n0
	gqcIuxNbm4N1DroUiJQmqPvjABfuQZHIH+25dDCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645407085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2EwwbTM0TURADBicow5IWuzUsaCIB3+Ueej0ISNlHPM=;
	b=IJhJCWs53yfh5k0QmLEIHStL1OGg4bYUpxv/miRkgAIJywA09YAGx5n//0ArUrhd
	mE4tcoB1XGph4I9jwUr6ZZM+0KEKGai1jnbtXtfZEsOoYYbkXog2s078PUaOZVFt5gY
	QkB3DPFI3rP04KiUiAOfloqb2Rcj03TvTvljqwv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19e7a10b-3e974318-0c11-4ad1-a907-2eca057a9800-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 136f6a7371d735f5c2edf60c5af35197070323424972a1b1e56f64cbe42e277d
Date: Mon, 21 Feb 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645407084
