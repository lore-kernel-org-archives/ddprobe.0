Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4667F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659504652;
	h=To:Subject:From:Message-Id:Date;
	bh=shlyEsf5vKZDTUbv5/pkRpdb6MVeayxc8DnxSRQ8cNg=;
	b=irS9Ro3rWLk+Pf0oqMSAncoOuT1oblNlgksd/jZqBaYI+PPW9lo6l9p77OIZtOV1
	qD+HMtIANlWiFbT4/S5DHJN6o5fPiZ4hkXqB1cDQkeS8GEdevYGocf4YL2OyZkPzpWv
	Lb18z8vX8nGAp8H/20Ddc/BWu03/U64DklPKHdL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659504652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=shlyEsf5vKZDTUbv5/pkRpdb6MVeayxc8DnxSRQ8cNg=;
	b=JWWhN/pDNs5rFarTHokkH3Q/6dN43OuUO+LIu6BEFHF2FCohRCiEdrsd1I7Sm8a5
	TIqdlPf0mk5xJGgvkjEWgwgoXOcftYmsgzw2kbxfzhnAZFNu09iT88CnqgjZ1IqAvYx
	Cf8+haxkPkvqaQpdgSohLT4+XrEZf9nF60S0iUvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182622f70fc-9d810806-bf61-4e37-829b-a2745c3ac211-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0132979ad9e9efdbdd7959cfe64e53b23f5cc45ff84791a5f8c47e8a759c22c1
Date: Wed, 3 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659504652
