Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154E823AA
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657595812;
	h=To:Subject:From:Message-Id:Date;
	bh=fg1/Ts1WdYrnlhegmo+BfLpS90dTQ3Q2Din8i9UffIg=;
	b=YPZpi1xc9v98cpMUtbo8O03uiKQSiltu0whPdaSjMLNnh6PWsXa3wZQbRKNRaSNH
	VC2g/QH3F8HVPWypxgRsLjU8B+z/kDKzIwgewBttMci40JAMfQSlt02rao0pxfPO/gZ
	Q/dC38dwLG/nyNVeV189OmeG0hs8JQ/0rD3IR7XY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657595812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fg1/Ts1WdYrnlhegmo+BfLpS90dTQ3Q2Din8i9UffIg=;
	b=HtUrR0uwj1U7+EIrsojNhSJXPHhugFKBgNNjMWDn1qiZ3iJ5YRfJK4FvR8QxNiby
	2oV92l3iaEuIVVFRroveyc9sw0FQJY1461gY/uc5UDNeUbNjvZniJB76EvenvVqX8AB
	MbtXBHOE1bFoLQBbtqcW/IFONeYsfnbRh6OxRnUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f068d9b1-556c7ddd-9a9a-4a39-ad9e-36ddf886477b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cdb37083023f1da42dc0e7feed722bcbe91e5fd035d5c304075d95a05e28c92
Date: Tue, 12 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657595812
