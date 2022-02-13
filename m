Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4E87C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 21:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644786018;
	h=To:Subject:From:Message-Id:Date;
	bh=1QYgZ4Hsdtn7XkWRbAKcDmmX71S3yaNCDS3MLbVQbKI=;
	b=IZY18UoZKI0mkSo5xLW1SEMpYDrKH2BQ+V8CYZvsT3OnGCzhfxEFgKbTiZRmNQSp
	Phb5B5tsh9fzFqDvBsQPTW6ebYEgxTfhYlfEfu9qcT37LFnLK5PjuarUrndgIgtmFNB
	FRAL0/Zh5ko7JPiQmg/tQnOZAK1iW+mi3ShrLeM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644786018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1QYgZ4Hsdtn7XkWRbAKcDmmX71S3yaNCDS3MLbVQbKI=;
	b=g9quL9q52t2bvs8g/5xI/Fdxxvt4ICl2q8UmrY2WdZktxCkKRRxmW2jHJxlblFiY
	v6BRiyni+Uk2tK/NMLXoRbD8J355nD3LGLAgHtWgv3IlJfGjCAZswL621gvHHNvtpNb
	/AjWd+81amn/jLu3xe2MvjNiwYt7ACpnMsYRinqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef4e2e778-c8854fe5-74ef-47a9-ae24-51d8bd502f60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9074b3e5032ea57fe2044171b8b08d288dcaf664baabc3a3c9e86d878173988f
Date: Sun, 13 Feb 2022 21:00:18 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644786017
