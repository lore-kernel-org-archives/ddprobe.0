Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D856E2C80
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 19:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649445778;
	h=To:Subject:From:Message-Id:Date;
	bh=xhq/RMtur73cKOYgDjcjfPl7PDTho2i9wbE11R5aNOc=;
	b=WEh2XEKApr3LLEUhsBUPgvtObgQ7jQBEP26IHNds+Izlwp9OE8OQVoWtNkpz7yOL
	l69AsnP8tGFFDektd7TMUOy8hHsq0oC4gmU7Y3WEowGyyz3PDh6+5zEz2fmwsRqoHDK
	h4xcfOlSZ7Fn4qjPu1U5dDAXqqrP4rg+1xBCv0pM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649445778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xhq/RMtur73cKOYgDjcjfPl7PDTho2i9wbE11R5aNOc=;
	b=O9/jdOmX6w9Uvu3LjmEUthjLx0VDA8DfsXP9IA6e99ybsT+y3RCSWHIBXmcqCC9I
	xF/l0FIBRlZDEtaBVZgABCLqvPSWhZOzmYLCJPwYhFEdfy9lhoar9aQaa/OKvOIw0cF
	hXLOwX36hwVXha2mfsy21rm1ZXy5Yq5lWLlrLRR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800aa1335b-c134cf3a-dbbc-40b6-b8aa-3a03efadca76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f53fb86d64ed2f5cbdef03bd2db0d9e77c8638668e26a76f22cdd5201c2a712
Date: Fri, 8 Apr 2022 19:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649445778
