Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60247A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646403385;
	h=To:Subject:From:Message-Id:Date;
	bh=yAUhLOpCkJqoQ9shB6tN8wDYUea+6s5nXDgoLXbrqnc=;
	b=WZ45I13//DdFhIjxSO4L0hgs3TbTmDnwmLIVpj8lEoqFMokZv1XgiFP9yhB3aq4y
	8qbGYEz/6A1J/c7eF3ZpOIf1c1VKazGoknz6Cof9WZz3luAtMHlbGWZ0mBQrBa8CWSG
	yMs0JTFBFZv7sbk+HtlUF8BNnAkKjh2LbKIwWFlE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646403385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yAUhLOpCkJqoQ9shB6tN8wDYUea+6s5nXDgoLXbrqnc=;
	b=Fq0NQbmvjGqXK3zXOSNb4045+ftXjte/8lhY7Dwf6UA6yjzovMfEHrEfglpY6HNF
	XUzCF5mTd+RYo8KIjIxwOM0b8NU1GuwOwddAkSjFfjMGRsk7YOB/k93v83EqIkzCdsI
	mEpDjJruKJP6Mb8ok2ZpxHgZtgzp7vpyOqhPegQc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5549f5a9-d7f77394-d07d-4d73-8488-d26894c4844c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab47b8554f90b793e48f1cb5de3f26c86245c849cc9cee88300830a94e7cb4fd
Date: Fri, 4 Mar 2022 14:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646403384
