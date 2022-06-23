Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76AF31C30
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 12:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655987099;
	h=To:Subject:From:Message-Id:Date;
	bh=WWjKt5jBuzBvHrhd4op4OgMunwATz7yDrZuA7gWBuus=;
	b=aYgcjWTxL1uLZ7bE8lIQKly6aaA6ljs6UK+qe6sdBMAW0rgOpJpgMGWv9i0/huZt
	qocxdgUng0Wjmsnot6W34DDKZZkvJ29WShYuOR1TB5OyWAKkXlhpTIi6BxfsiR8zVDZ
	f/fQXqq0/xUS20qeAWN9mN5a6d9I5GxVeD5/Cw4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655987099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WWjKt5jBuzBvHrhd4op4OgMunwATz7yDrZuA7gWBuus=;
	b=im5FZKzqeKp05o9HWD94RcEAKDU7b5vzLDkBZX32084mBGaIsIK9UHLks7GaMD9O
	Lz4Zmtaj543jkS+YqD2d/DsX06Cg3im5pueCF3wFv2Xj1i8OtiJXk9dKh9j+VHEwM50
	Xe65+ZESGpnsN1zgFnFUkxVa322oM3MnD4jA6aw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819085d689-ce4ae378-0ad5-4e18-922e-fba2a0cab54e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e257064bfec9e7dfa14066849a79176087f8900a0b451705efe450f638f27cae
Date: Thu, 23 Jun 2022 12:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655987099
