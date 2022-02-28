Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70166320F
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646031684;
	h=To:Subject:From:Message-Id:Date;
	bh=Ldfbo/Rfa8uBsVJluuSGFrJaOFWhtckv9xkqOot7JLI=;
	b=aXFrHzAnGcf+5y5A4n4Ul8amUyrCwA11l6VVcK1bkXzU4k3ZfVe8tNZQRv+168zs
	DGWoaPbwdKTY9e3kftixkkGUTqYJ2W6/okbncOLWjQwQkAP3ZHeLtDPcWVCKaHY33f5
	8GnQkNpXkElaKDKglkJEEu5hayDUPnJND4O0LcF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646031684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ldfbo/Rfa8uBsVJluuSGFrJaOFWhtckv9xkqOot7JLI=;
	b=DuOM58XSTLTowpA519I+LedW7NVAypLehuSyMGKTxwkbOj+DOuLia0sYq6/4dY/g
	Ty76312m2eBlo50IkcrdV3Jw178Ci/rDb0O8Z9s1SZ+rOONnU/pcdFqnxuUJ3MQZsUg
	U/nhk3fVfoB88yDgR8BuMs5ueGAl/96AB4yH+lmE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f2244b0-feff08d0-42f2-4afc-a55c-8029c6bb866c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0e7a269cd88666b5de53c7071e61879e21f97e10d3d4818f156fbf358ebb41e
Date: Mon, 28 Feb 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646031684
