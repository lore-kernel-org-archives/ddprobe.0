Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55C5620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647063684;
	h=To:Subject:From:Message-Id:Date;
	bh=J3cxhgdJBVjfQOo0lyKYAs36E5Y6a1axNFQhIP2x/EA=;
	b=klu4nnJEPzbPaDm6LuwBC40bSuNqAJkuqLL7TtHSq0Lbyi6BFMRPj6nQuAF5OL6i
	+yAwfmoVYBjg4ADmgtt0vwAT9188YLs4Qbu07TWApxfce4ISVe1MHPGMuRKAST95vPo
	4+gZF1dHe+ktXkkxMoe0uV1w1pYRDq8UMB7p0Fdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647063684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J3cxhgdJBVjfQOo0lyKYAs36E5Y6a1axNFQhIP2x/EA=;
	b=KZ4t6DCtuwNBZfqtHJsA9p+2GEA/yfocEkMnvTSyzziwx3Uw9VT9Ta1C2KpPnW8o
	0gZ8WnO68zZP4bHqqsp+EpKtquzBqzdTrWjmHZ3I5UFofIcj83+S29lUo7eOYoJR93k
	GZJ+GQWpYk3AA6dCEtyLipzx4+H5HGxHb6lguikw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ca55689-26ae574e-4017-4799-ad1f-10374c22b666-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 289aa09e85ca157553702d5c42445b077244aa03e3f4d5567e3235b814a31484
Date: Sat, 12 Mar 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647063684
