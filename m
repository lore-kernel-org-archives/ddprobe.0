Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671AF17EF
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657076212;
	h=To:Subject:From:Message-Id:Date;
	bh=HPJyY2fV4kmMNpiLKiBB5xgSav8Ipg8FIWTPhLHelTo=;
	b=hDJ73ksPVY2SYGGeX8kUp6tm64rTObwMIbBQ3afQkmLa/9JpKIndUJWp2XThEW3o
	GOy0j5OJJZHb0HQ44aAn0vg4XqXS4GPWwZ+MYBcIZ+FJQRDZx+M7CxCMjxkV6rCsCLO
	WGgGSbUtq3s8lXVuB3X1t3s48VGPGOWj6zln3kWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657076212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HPJyY2fV4kmMNpiLKiBB5xgSav8Ipg8FIWTPhLHelTo=;
	b=EI13mU0Ew4zPnu6WbT2bj8QagRFtckT8Kz010jNRHDAh9/XZKdxL3DWMClylH/4Z
	goHvHY8B14twtBzFxlOH3wqLdx/kcs+7lzH4xrqhFNQ5m+wZ1jBxtgGoDBM7CHozrVs
	7i5oORVnh0rIxTirPKZTYQLpw7zZ7b/vPnH93KgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1706240-4686eb21-4901-4ac7-a8ad-1a9145b854b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc96c20a13380dd9471f719b2cbd8997c4196654549d5d76b8fad319a342bc0b
Date: Wed, 6 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657076212
