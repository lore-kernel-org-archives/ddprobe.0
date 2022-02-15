Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85319C80
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644921684;
	h=To:Subject:From:Message-Id:Date;
	bh=mpKP1nqgZJt0rUsKDt9R9N5ofqLfvoWz+P+9oshbSSo=;
	b=mepdrMWR/dxbUvCEh31hwICI6bTM5p5ixaK/20r+H2iHW6Ba9iLjPa+iOxD/rcqX
	qDDAnvuCYkP2ZUiexU2zVreAcc3LB4DFn8mFrFRlXj1uwZRWQWPGK8Sj+wsHTN1k5by
	EXuLFUDrD40uGkQsiwGzMdu03IwAd71rV5XgYAIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644921684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mpKP1nqgZJt0rUsKDt9R9N5ofqLfvoWz+P+9oshbSSo=;
	b=d/p8N7cPMavxxVTWCpyZqqCjFCuBctvOETISvETs5I6CzF3z9IGvkjfevVJMQTxf
	sEKDfVYXUy4xNHQaLQz/YcXTK+2Tfa8tWaJd9GCtLogH8Y3akFJaItTt3tbOaeca48F
	ZQY6PLI5e+Jjw02T3La58aZ440c75ANEIsJK5yf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efcf90317-49a7680c-7317-4090-96a6-1c83e4d0f434-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 073b9fc992912b13efe79674254e3d75fd401cf4e8c8e6d34bb2ae0de3f17c9f
Date: Tue, 15 Feb 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644921684
