Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7E229A3
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645451485;
	h=To:Subject:From:Message-Id:Date;
	bh=0MUZYLqcRv5spmV/yt+Qs6VwtwuWfqyUuZjDvhq0eDU=;
	b=QJQNZZ7QaeMOH4v7VbCu9c6xEtsNvdd0/h1r/BMMLQH7Fl2eKoF/0QtHIv9wfoZa
	TBErrXG2FHzKqpTVtHW101QZqjZKVl2TfHKKEGd1hnrVWJfNGXJocgGIMKFxghR1uOe
	QAr2gU3JWr2XKAKdGUwVq53rGsxHYoLcTHvsR1H0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645451485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0MUZYLqcRv5spmV/yt+Qs6VwtwuWfqyUuZjDvhq0eDU=;
	b=HKZ82TfUjmhpBw9xiSHWKwsftWhtymA3KIgmV4TJ9lVCq10sOdznpVugThIlVypZ
	zZkjuONsSPyhfxoN/oO2N3x9WuZVuRQGzaH7BW7kGy0qbtVnAaP/S2UKS6sKpNTcUSd
	S4w7oUg5BD5RTymcapJDHDBjSMRPMAO8pEO+fGT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c8d1e43-28b15161-1fb3-4773-8cf2-24323b71d1ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c363ebbaa48fa47cf647e75da62174de23b272023b6a3464618a7fc488a69403
Date: Mon, 21 Feb 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645451484
