Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8221866
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648044684;
	h=To:Subject:From:Message-Id:Date;
	bh=WP1HoVIxqtC+BCMijtcmjPrsKSeWoAd6RdiMkRNmYVY=;
	b=FczB1vAhBDPlxHtci9UAw8LQi7nNTsnxLO0Kf54qpaqJuB1XYYDcQ55gAz1xW0aw
	ksQ3xT297bCaGq+f7VGGzLLycatt9rqBdGZ3ambJ4f3hCtLiWYd8m8MZT90PlyaV6X4
	CnJ0dmkgwvfLeukJr8x0MUeRmqr5JUMJl0yGErh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648044684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WP1HoVIxqtC+BCMijtcmjPrsKSeWoAd6RdiMkRNmYVY=;
	b=Rudjavfs0vpck0sEieD4iqkxl0/wPzwgJ6qwkr2ub1fqB8yJsG91tZkAy+EhSHGb
	3S6/TpGAsCBxHS+iHA1hmyGpbwUG+kV+jzSPvI7RwhEoE1M1uBqm1kM1hzAalJ8MDuN
	mi72IKTXYmEuz3jrpbdMZAFDuyD6bH63taKIUfdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb71e35c2-75c90702-b9eb-4fc9-8743-8f8faca50696-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 584acf30d885efafbb8d042953dd4f957c5e70023feb5e13162870be6ac99d37
Date: Wed, 23 Mar 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648044684
