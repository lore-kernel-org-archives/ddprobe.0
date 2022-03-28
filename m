Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213F4437E
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 17:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648487878;
	h=To:Subject:From:Message-Id:Date;
	bh=tEmgO4pt7kQ7SwRh5aeiMw8WG6w+vOXW2kkZM4UWl54=;
	b=aOEGqSNXG6YgSdJev4fJtD/fQ55zLtzUXb4hxnHZGPUaIhMHuWXEkr5T+2P61bw+
	nQgTiQtO7xsAKyJR2l0ZhTV7iKCUO60jhLr6t30GxHHQ+ImJAPR5nbZFrOkGC381fEw
	0e1Xax1oVt4GqniHhUTHU2ge59h5goyP91Z2mxn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648487878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tEmgO4pt7kQ7SwRh5aeiMw8WG6w+vOXW2kkZM4UWl54=;
	b=Ka/dE251Rb65DOyaB3KVfraw1LoQpg6t2cANowaIySVGYOAzxU4DsZ/1sgPD7Ow+
	82W1K7GR20feTyUvZ60IyrMe+Ktlu9pDx+Y70x+IMGd/HdH5AhffPcZL5IZlA+TBYW9
	VgMyiy1MSZkgVVjJgpEwijYEp+K+BoezN8vtz/6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd188ce94-4dbcd174-f7c5-4e28-acb6-3708c1a2bc29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b79b43237c7581d116978e6c895500ca3a0c0a4f333c87cd2276b34fd89c5738
Date: Mon, 28 Mar 2022 17:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648487878
