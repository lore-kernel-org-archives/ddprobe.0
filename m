Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A1AC88
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645677985;
	h=To:Subject:From:Message-Id:Date;
	bh=sW4zHTCVecHi4WAdyyyQGYSyZLZaAHDjct4IJ2vJdjk=;
	b=Z96NxD2KGTgjjwLQvaCiju/7oTEPQkrOgWZyeXprYQHWKYb8+5+fA24xki2l2F3a
	vBJ4TMwjO+BInmN+ZguJV62WUbOKnU1xeEMFkc9Y+/Hd8ZSceCM0CY8PdGfVzm6Ia61
	XQuBOU4rZnhZcov2CqYMACAYOzRjLj8XjZWQrgCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645677985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sW4zHTCVecHi4WAdyyyQGYSyZLZaAHDjct4IJ2vJdjk=;
	b=EzACRVRRJRBCKCOCg0UPVe6KaoJkxduXWAglG9tWv+fv8V+xs7rTBgKzqO6pPW43
	KIsRYeDEXVmfKz2dW56Vp9YyIg9uU3oY3TOIfO2Phpeog3XQHSIj6G41aGi3UGo/xdV
	yDl4TFEfdScC4YR6KwXEmDKfKWWF3IzZWOngK8Go=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2a0d3c02-38226be5-fb7d-4448-92cf-b3333f6466ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc7b373ed29064ebf8dcd3cb75d6b5dd20f42bcca99706f77884480048303dab
Date: Thu, 24 Feb 2022 04:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645677984
