Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311F57B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656590212;
	h=To:Subject:From:Message-Id:Date;
	bh=F5U2dx5SERSDkVzqMlGM5l3/ijilyaTyZLlbWKeYaSg=;
	b=LXHPkgLawPmlDX1CLD2LObpyt3+j+pnbNCSBpXc+WlT0iKYpOSbSFKLf3e69dvWo
	JwooYMdTcrQl6JHmZ7gOMwr6ZsmR4MGSDBQRGr6mMPrIDsxv+bzXqcRzCcCTtBL6urS
	TkcRWftaKl9YmPMMRicRWrpI/obD6t0rDzCURfmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656590212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F5U2dx5SERSDkVzqMlGM5l3/ijilyaTyZLlbWKeYaSg=;
	b=Y27fKFZkIYza+2YSU6XhylRgMupWZm1cGtjtDH+qcvfBQNRKmXovqzEkOpHnYqJn
	wDgf3XbucbIex7aaItZwoNg4iS77T0XFexHimQ/zlve2iLR1ONrzhDNUIwsVPwiQw6U
	gtUEXrBY6XQJOzOlKaW5KPYcChqSGs4T9G6hIDQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4789cfa-5f3b9f40-961c-4f70-b5ec-b60f9d62d344-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 812a0b88b1b3f965731bea8c725c74458bbacfc70d9ece3d6958ae27eb435dfd
Date: Thu, 30 Jun 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656590212
