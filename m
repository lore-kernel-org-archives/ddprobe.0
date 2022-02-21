Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1645D612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645404985;
	h=To:Subject:From:Message-Id:Date;
	bh=L1LvSkmirdGS9qE7YBQ61t3v3x9T6cDYBD1aogTclzo=;
	b=m5PkF4qR7AKF2N3SKZZn3VJW6RDF7XL0fo5KUjk1Z+n/9VfrRvaLZ7JStqLKKY29
	zakihOHZFDQN1N0aHoXhBoZZOd7IyYcR2rUchzmIKiPXHer4Jw8wx2j9hyxSxgqllKi
	gPs9giHS4kvqGinim5+bT6D+P59+RjfmJoBVJE94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645404985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L1LvSkmirdGS9qE7YBQ61t3v3x9T6cDYBD1aogTclzo=;
	b=VYUbmj51FmBXGvnhfh9S9VlPI1J7rnmFOdC1THeVJ/9H1indmkaYHEkS7guFNv92
	Cj/UGXZzkd6YXIrpAukGe6mJUhhJDpbYBNpP0x8Sg1BHvtekXCWBnnh35pwv+7GK1vu
	4A12T/ExfwEL1iXv9HkqPux2z66qyvaPmDAZZWSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19c795a3-aa2e6878-32da-428e-8e10-ca80a647db05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 508a3e1a7932a182535fe7ce4683d2cd0bba8866507d96f5ac3f904706050bba
Date: Mon, 21 Feb 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645404984
