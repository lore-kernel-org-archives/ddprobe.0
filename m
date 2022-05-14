Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F6D63F
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 14:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652539439;
	h=To:Subject:From:Message-Id:Date;
	bh=pxwQeJqNDgSHuC9G+VFv4mqBGDdsGFAv26Yy+U2YccM=;
	b=OhomBdBDgyo4QU74hF7eUs6QfwdDMHO125Bc2E8bagjfu6FGPQmIBSey+vd50lx/
	tNqp6LNblioKpr0hIqGTYs/7z7m8IFPpkHJkdfVOoCFL3TWKuy36e3BNfFEpccFQPvW
	q44iMwYWeijbI3tEgBSbzA7fmMQgYHHw2i/qw390=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652539439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pxwQeJqNDgSHuC9G+VFv4mqBGDdsGFAv26Yy+U2YccM=;
	b=AVZp5mvXSjqCfvWcjjYWe0vJZlzXhEGYOPZyY4L+FhjjjEXoO+ZM9P9O+fZkFav3
	i8GBc1kmU6fKndnY+xQLCMIp0/5SyFUaB6fAAfQDSwBM8XBy6VViiXNIITicXydjQsG
	kaPneRSqBmnRQR5/HnK682aPj2Iapc9dK9USPBVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c306b882-10eae01d-88df-4b07-902d-13e7ae605f7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaa0c1bdcc6a8fa32a45f4b3e04c98c54d25ea4858780b96a91176a65c703a0b
Date: Sat, 14 May 2022 14:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652539439
