Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316D17A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 09:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647250885;
	h=To:Subject:From:Message-Id:Date;
	bh=Qkt2mHZUl6qdkvorEQtJ9+vxvcYlQgv3KXRZR3DHVd0=;
	b=PWuE55eyHhbuXeQDz7pLu/lZguLXWMG9kWwvn+pE40JrDzdjUcdpYTO9tIiOFxuZ
	2m7n1M8nAgQcEntBIC+8WdoraDXCQu5d6HSANfW71DAv3qD6Xt9OsmuGIF7aMPIyH9p
	c35McCxykIpmC4FdJbGvT+meGbBy/ICJQGCc0JyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647250885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qkt2mHZUl6qdkvorEQtJ9+vxvcYlQgv3KXRZR3DHVd0=;
	b=Ssv4EXdqNSRj3dkNsGHZ2KM4/fDNgwpdbwDCn7IWC4L0zGHczeIZS2/45/krwKOF
	07mcn//DDfoade1kQht5S0xI8U8WEDS8EhhtPyEtnG5Os2mG0Xy4S9HUll2Y7X1Hmzv
	hLWhAjgqdPNYK25kyzI5R1CDdYsmHf4OPbidKCJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87cdc88a-1dfe6f64-84de-4b9e-8b45-332262f9211f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bdd8d44cb050153275339ea391b419afaeede2ed9b1f06acac0584c3d437d2f
Date: Mon, 14 Mar 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647250884
