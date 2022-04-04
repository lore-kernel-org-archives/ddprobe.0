Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3A728F3
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 20:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649105818;
	h=To:Subject:From:Message-Id:Date;
	bh=l0JOgGhnf147KslU36QIJC+j2kSbqWcKSvPYX5H3GQY=;
	b=lepONBQ5PIcm2wU5NsebeNnW/1XR0kNHPNULpJmtGC45equErD+RuQM4pi2gpyLT
	IQYJVCTNX0Q1S7JeTZtBBtBndg+vK9usM/0no7avJZzso2uWhhwLlrgVfGoSW7wKXcD
	xmKhU56gXo839MHKKyXtosnF0kTp3Ju0VnDqPlMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649105818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l0JOgGhnf147KslU36QIJC+j2kSbqWcKSvPYX5H3GQY=;
	b=JGwNZnhFeMTztN5QFRL0DRnkai1YHR2vDvJ2ZT2zFGsmvBcWKyBfdIn68c7mSgEF
	oqd/vuR3qfjgejJElXDFEbp6nzg6h9vuS5a7d6bXrk382p1y7+IKJhY4+OsvvTVkEWm
	TTGQtzJQuZRK3Qk7E3QDgXFALrBMlTEdYzJB9phY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff65dd2a2-da505367-d89e-494a-a5df-a95e60d27a37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2904d19f5d95f41487f5c4ba6c7122c1169d9aad81f57242a9343e734b1b0b07
Date: Mon, 4 Apr 2022 20:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649105818
