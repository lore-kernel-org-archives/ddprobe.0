Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D5B7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658790412;
	h=To:Subject:From:Message-Id:Date;
	bh=RVmX6SCcF8LT1QETTT0fieBpsXf0h+Vf0WAxGumWAAA=;
	b=A31MVYOvPEHJBD42LN9Z9hIuLQlM4w1fnos8fvIrrwwCh5uhYiKKRnU/z/ID4jan
	gKbDJkH6sQlE8tEl82ukhEKk9YV3JSBw0BnChHkgs9bzOaPCMuIw0V0c+/iQFFM57Hz
	t3MDv1XCxh3REwaOuigXRNbsj308YetLijPEoERQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658790412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RVmX6SCcF8LT1QETTT0fieBpsXf0h+Vf0WAxGumWAAA=;
	b=J5VqC5iWeba0mHDXWmJ6ilLyNU68f0xsfLF+IDY4HmKvZWD5YpPOUTxQveI0ij2k
	BW9XS/jUfbkmlTgdrtY5CechI7W9nxO8N3Miz7JRF+3pJpkocj6lJO34iBozi46+Kg8
	EAvv4EfDaotXZFzsRfHNgb2E7YBZ0TGP5UAx70vU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182379cffe8-3b018ad8-dbad-488b-99cc-d4d01c66c85d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 452e0c97d31d14d92e06b31839c35c2d747a5b30cdba0635b03bc91853c7460b
Date: Mon, 25 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658790412
