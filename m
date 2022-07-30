Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472CF23A5
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659202252;
	h=To:Subject:From:Message-Id:Date;
	bh=9/OCyIOOogwnUKx5EEc92l09hhJqFZL0+69OBN3nqm0=;
	b=hA8IFykc8cdYrivMRhexmt07VlW/LcGWNcMYmOHOC7I1Tc6NrbrjCkSJCjfnO+jG
	RmxpAnzqeCTQo9MY0ukswp1BdplvCfI7BhFWqM7GGp7qJZ2bdiT9c1RXUUG7lYX/kIh
	zHtIcBhiBGWxixokjVT8/z6hEEjOYaa0vBigeFzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659202252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9/OCyIOOogwnUKx5EEc92l09hhJqFZL0+69OBN3nqm0=;
	b=ViVQHp+jn8nCfrrvhPi9hLrkT7F3RW4EvZ0yxN42dhCzgs3vz2pO8geerw9jxf1J
	37wlMvzQo64BQAhhGyP1mlouMNPQfOiBQb/i6fKiASYThWmdMjE77KDbEEyZgMNRB8n
	0BJthAeOzktLuoSs8Xoryx3MIFrZl218IruV4qkU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018250292f03-e9b463be-6e12-447a-842b-0215c651091e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44b5ca6465c98cff09934a80c33d594f625e0af2589b4c61c958d8017b34ca2d
Date: Sat, 30 Jul 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659202252
