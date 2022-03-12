Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE90369
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647081385;
	h=To:Subject:From:Message-Id:Date;
	bh=XonCAX8st3XT7MBqwPX1qd8qHf7p8FUS2qRxB0p2WKY=;
	b=CEa7TaktsRevpKAYHTU2QLCtjOK9sIA18RqauX3PN2qmt+z4N3UAexzitNpUlWKw
	dtYEBFOsk7TETXvooms6HihP/42+no7Wo2lvk4tR455xS0jxK5ZZieGbrFZfz15jZF2
	LykYytyeRpX+JnT7VN6HXjIpe+LW9md9X5KsmFWg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647081385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XonCAX8st3XT7MBqwPX1qd8qHf7p8FUS2qRxB0p2WKY=;
	b=W6AcuY3KtRq/sgWsvMG4T6UXOxsQtjTo4Rc4/jTMEREWX8Jnfchiir/cvdq5oVMK
	0LmtOGMdsIAYdnoo9Dz0M1EbhFucMShj3hmacuswFfpt3Zr/DX6Hujg1WGUCZfvXeC2
	msvgPEy1I1Obrm76lX3/yjiswdvofncinMyLGhFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7db36b3c-ce1105e2-e379-48e2-9604-fc1f61a7b37e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f186c0005144c87132acce850b3d8be2ca7310c072153118b5abb5d1073ddac0
Date: Sat, 12 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647081384
