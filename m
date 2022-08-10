Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577E317CA
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660112452;
	h=To:Subject:From:Message-Id:Date;
	bh=4NPZ+Avie9whHxDj0CxTd7qnChnEctx+IeNBIYatjD8=;
	b=a4zvq6BR2NOSPn35IS4vMXAEkcg7uIHUPShvNkElGXtOJiiPVLRltqHxWgsbVGNh
	8EcTFDGiLbVzUmCe8iV2Gf1wr4twSBtj9TcOjLnrWo7lKdsbM8qmf400rDeqR3cG2Ou
	RqNGXYCM1u+ndKYzX08siL/X8I0dUBPIYR0CMJTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660112452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4NPZ+Avie9whHxDj0CxTd7qnChnEctx+IeNBIYatjD8=;
	b=iRbKE/+6kVhcgb6ayYrK1IsS5OFdtf1+hzvvMjq8a9uqnduiPyk/QVCF/EXNDTrm
	RRwF/p5IPk4talWrt04YOscXBMGZPVjszYCrapMGBUUBs+Y5wFFDD0W9qkOs5OIG+Sp
	i3bOXWOaq1wn+UdIOjPYqEO1TdYo4l69vzeigRek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828669bc13-1b10ad93-a7bb-4158-a94c-3b58314b239b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 969944b4ab7745de8445161fc03aa251f14b2fe17793af0b06a1948a4bff6619
Date: Wed, 10 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660112452
