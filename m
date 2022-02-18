Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A524248A8
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645173385;
	h=To:Subject:From:Message-Id:Date;
	bh=p3cp9SXuA8OG8MOqsuEvxVQtMxY6UHkb4zW0vbG9n0o=;
	b=LRm54Rqp3iFy7XVZO13xBzmJRtTaF/PwX/fEa8YdnQiY14o1VwX3diOT9RbHIw23
	Pw8YtyJ8YFby6DfqppBWkTToD2nAqIdxG7zVAF3T5AoXbUNkQ7UloKS/4EkVdjlhHWS
	I1MSqWGwQBfR1Yz0StUL+lT7WdUNTZsRJVxJA6mc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645173385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p3cp9SXuA8OG8MOqsuEvxVQtMxY6UHkb4zW0vbG9n0o=;
	b=CKfyHojeQuvvR3skQYOm4gGcu9ono2zq/0DscliRyJseSPT0MgFtmS0c3fuA6l+m
	Ft9uJ8WJQQlK+GseWCYlm4w7OowedVXhHg/GDX+bwyiW9Wdh1DjuK9+rlC4DTV0Yy3G
	RaO9Cy+qSFFBDsMkPFP7S3BqUJ1leGkiAX/kD7iQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0bf9a644-62faf8d7-f27b-4a58-be65-be3d3fb518e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d95e2c65cef05dd97eaf76a7b617edee694cc44663806bc0b5fcaa4b9620a4c4
Date: Fri, 18 Feb 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645173384
