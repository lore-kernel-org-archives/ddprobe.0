Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B990723C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645002985;
	h=To:Subject:From:Message-Id:Date;
	bh=C8QH81M6Fx7WVlx84JyKmtPbPzkx7RQP4/86ZlPMPz8=;
	b=SFgk5XHnmiEfuyok9GK9YGRjEaAX/ig6F0/J1wIDt8LX3ciu7a9AthaVXUWWmdtX
	Sdq9IbxCpCIcup5J7A+W+jTMAJIick/xQjaKHT707ckXCuGM//iA7n+2q3eCvnLKdzA
	QM4gMAlr8AT6Udx8YMy3wu0WGUkn/C3kA99vSx54=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645002985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C8QH81M6Fx7WVlx84JyKmtPbPzkx7RQP4/86ZlPMPz8=;
	b=PlTI96Vl5l/Tjc+xjrdhZCIxkJn4BDDLDZHeC9FjOhX7c3q9ih28LRr7nKrZP72p
	TSlA6CdgMs4CXFy/uv7N76akycASj0R8zF8RKYA1Al+AZxCGTNjLQGxLaaQ8N/Rd0KO
	LjGLCWUvF57P1NY/ZEhzkC/DI0o5GbiYGlXFi4zs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01d18dd8-05cadb17-7f4d-4ffb-a42b-1d0ac3ad157c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd62ad2c8642af6db7e6c70a6c015829c7aade8d14b0d34bcff2c4f5f3a81435
Date: Wed, 16 Feb 2022 09:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645002984
