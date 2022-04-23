Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EF77C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 12:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650717598;
	h=To:Subject:From:Message-Id:Date;
	bh=0n9WRH/nD6h6HB7YRZ7ienxf31GqJy5eOQNpRxLg9js=;
	b=IpeshfhA3g2v6D/a0R6skFjJmMbAm+yM+tA5g23eSlsUvbpMRktx590XayPp/09W
	wqyzaftFB3oVT8E90dr8T9QptAA5caYkMjEwK3f76DkHfouZjti1LYxXLimc4z8tlZt
	aqDqTU+smXNgVHmxfkdsvjhb+J6M+LKycu9k89Qw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650717598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0n9WRH/nD6h6HB7YRZ7ienxf31GqJy5eOQNpRxLg9js=;
	b=aVmCWJuy4+NDhngw9BInyVceJ69wQzLNmDdraopzARlHDifEu1mTyaaFmQxVkWm2
	3jdGtp4SKtM9X9RYa8S2207Hvi0qShzGeoOwH/70LAxS3Jw41FsdjnpdhkQXuRrBr4k
	c9BZGA6e3QUdPr30+VVY0HX1qR82Vao3r/QWQbDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180566fa26c-cda73498-081e-4894-abe3-7d0fbba47c7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d563fd1bb32352c3517bb429cb70150ac4ef231bbebad8dc9bece712c30ff98
Date: Sat, 23 Apr 2022 12:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650717598
