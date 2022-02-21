Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9956F7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645453885;
	h=To:Subject:From:Message-Id:Date;
	bh=995m+8NEo+wC8r5VYWqZmoaetlezLjR/m/BrEPf37cs=;
	b=BeOsCeqzsEL9qI6S06/H+gUzEI+zZIavqtSGrHXG3n65IohHdrkHxc9HgT6O7Bbt
	zMWONsk1PhywIZ+2hbkjdvUn8C+1lKgeAYrZctjAde4khK1Bz18wHAo6ux/gfm4pL19
	ZeDYHCAksls7SvQS5UZaJwgzq5cthClkzw7UEtJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645453885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=995m+8NEo+wC8r5VYWqZmoaetlezLjR/m/BrEPf37cs=;
	b=WTOuKv9FtQaCdd/U1cPfB3ipXL+WwLdy9lfu78S8sp1M48qbpm2CuP0ISrwISYzU
	HsUt3IH+eDvu1N1uy+sNHfjIw5QksO3VzIDRBneNhts+ZPt0YtXly9Suir2pC8saDQd
	jQCZ5coweyhrXIGqlfg2Onqp0NkP/Sc10CeaDmM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1cb1bd74-43eda0b6-c218-480e-b5e2-81be7052185d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cf72403dfb4140eb510dbb0bbc41c038dafa732a79ad3b79115e863e2e92d27
Date: Mon, 21 Feb 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645453884
