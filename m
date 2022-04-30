Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442281FD4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 20:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651349158;
	h=To:Subject:From:Message-Id:Date;
	bh=jkLJ1ix3Tr/s6qQn7IG8o8mhWD9h8I2wU3FJVoxLvoI=;
	b=eKgtTaIhaOXrq5y63e9Z9X+JBpssOpXN9i+wXngLvvUj3/jS/cAGFHG2NX5/X4sp
	6xfFl/poeA4ILFCWRqBipZa7jTsRAYxNkv4G+bMTnVuVnjVfa4lblgOGw7Ify01IFwe
	sQ5K6ScVKZxPUefzwnAcbOdyGyXo7151ffW4UZUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651349158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jkLJ1ix3Tr/s6qQn7IG8o8mhWD9h8I2wU3FJVoxLvoI=;
	b=iZDnQ4Qo5JGStjWeP0+HF+fbl5Ci0hF58g9/Y044NQC33RqQpxz01jkHcBgdz0Mj
	7zkMGHpvwHXKxaa6X3nL3E1HSQR0e7miHYTxitg8KNI2+eyapAgYcIv3d3KWEVVuL6r
	JiTvHferDByJiOIQpVtn0ta4utM8c4swodANSxQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807c147960-ba258a7c-96bf-43e8-b96f-089593fda742-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aff8d628f89e19902761654f1f3fc098e3b62c359e4e4bdd7110f9e23bb07073
Date: Sat, 30 Apr 2022 20:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651349158
