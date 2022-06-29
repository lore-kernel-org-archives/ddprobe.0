Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5383F3D6C
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656520012;
	h=To:Subject:From:Message-Id:Date;
	bh=n5sGjsjilcAW2kVpkKPcf6CbE/Zg8GOvLyU6HcZAjVA=;
	b=OYxw3nr5mG07N0gxjsm+tlFxywGvIdPqtz95/dhZT9SeBxU6l8zUACP77zm7+A7l
	DKBZ75dUVWglIFqtqZzdzrhxnPR+IGJkwU7MJ0uSoZQ3EIBRUJDAvJmIl50sbNLB7cp
	U9wkyRCzvqbWDEUFIuf1rV+rBqJ27OromuOuQEsk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656520012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n5sGjsjilcAW2kVpkKPcf6CbE/Zg8GOvLyU6HcZAjVA=;
	b=T4T0jspgwDmrp7+wAii0cl3e3NhKQA3Bb1nqB21LQzLl/s7hyqOQL+ZGWnJxhV05
	pJFt4dcZ1RKdUZFRZcSfHkyj5qc/n3ns102wzayG9F/d6L1nFg+LD7gSz6JzDeLZzBr
	YehbrdfqjOJ02n1TR6GbOZ6tZVL1vR3U3OqAf3tU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b049724d-2a2d6591-d768-470d-a31a-9702aa4371a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3b7f64acccd715fd51df9d5b33007bf7c3139bdee4decfca150c754b5d53f90
Date: Wed, 29 Jun 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656520012
