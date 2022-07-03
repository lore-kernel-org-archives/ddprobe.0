Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E7723CF
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656856612;
	h=To:Subject:From:Message-Id:Date;
	bh=kOMvrU0UwbdupARvtn5Z3mdKKr6VzQjbjDcTtclABl0=;
	b=j95NqRKkvlN7B6VyAvj23aLjvU5KoxOlrP7bBHlOPV1QvwU63ZVgbJcTzQzghA3m
	9mNlKpmEN+r6G8l2JgXqqlznsjkleLkCoLTawea/bYt7qVC9OyP0P04KpyG3ZZdqPYG
	l7Oru2qGmPJ9jQb6dMKtzDdlMcTEA7VAUNTo3fh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656856612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kOMvrU0UwbdupARvtn5Z3mdKKr6VzQjbjDcTtclABl0=;
	b=LB3D3dnog83mmkiykonRAMIttlwt0v1AKMrUddyituIgiPfuaOvt0pgGVX/DHFKp
	i0uYM6Y9vKcdXVdEKLN4SH3UaDex8Vowq19/Vb+MnjFudYBtrv7l+Ng36gQHQZbYCqR
	c9ewS2NGqFHkxPlHui6923fFQ0RuE0JlV2+HcXXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4598da9-50278b6f-d8eb-4c95-b7d0-e736303ee8f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10172f18c9832aae2f9a47f0470766998827e17d04822bf57c045cf5c0aac988
Date: Sun, 3 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656856612
