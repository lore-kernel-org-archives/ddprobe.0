Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87031116E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644904884;
	h=To:Subject:From:Message-Id:Date;
	bh=4JZ5d7yZKK/UgZfkRYok+XUd8ukWfGHXfjpwChO0rDo=;
	b=UllT+xjeQMyg6NAcs0lAG1OcUSM8AbnfpR5feE5ZBD4ZnJvh9QuFh32q1M7e4Lbe
	dHuWokTsTKztjgv9pQZnqIkXfx8Ct86DFZCvb4GCh/4Z328522VM+oxl8J9zFAq6ses
	oEcE+NxsRS7BAi7WHhkyi3z4mf+zvlXWcnuzZlYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644904884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4JZ5d7yZKK/UgZfkRYok+XUd8ukWfGHXfjpwChO0rDo=;
	b=lx3646kjRmJDTluvZQes42GoPgzUkyFNwV/zfDynsuIJ2z/AJ7fhFF6zr+LUy2eH
	qqFhUFsXsf9Sg2ggE/6qkMke0J3WJhymsuL+2ykQfErDqFAMwctJmeWDyI+e/P76aNI
	R6TyqNZMIaYJ47BbkvBjlaaSW7eBkut8viIKvbrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efbf8a9f8-432356aa-4805-45bc-9844-1ecc528e31aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a68e2f6d191192d2ba66fd0a0d54a29459961f0738ee7ff738c1f848acb69f14
Date: Tue, 15 Feb 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644904884
