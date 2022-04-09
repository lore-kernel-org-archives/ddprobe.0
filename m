Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106C1A22
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 15:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649516878;
	h=To:Subject:From:Message-Id:Date;
	bh=ykhyedf3wrsQzJrdfvXNrpXZYppg4rRMOfVde3HOdWk=;
	b=K3cusl84kTseCd8/Kuhgjm6ST/B2Zb21Uw3lp3kpIbqJIO64uCIlZ9tweuE0HK4b
	v9Y4kPb+EsS87/0dn6PUfHh8WUiZaMzEXq+b75i91JCD1TKPXzSKTuaXVE1jDIVuQVg
	ZLG3Tm5c5aCKUEsvwxPqWiHzCvntLj3G6+tx6hwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649516878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ykhyedf3wrsQzJrdfvXNrpXZYppg4rRMOfVde3HOdWk=;
	b=LXDj19g6oKY8tsYbMOr26QUCZaY6VnapV0rDGj6ibbEoH4NwTuglD8U1lnUlV+Uk
	B7/KgaBouCwqbIyH+zlVKNOh3VomH9ZtivuqQ6Yv7BxGJrI8JK0exqNp+GnygT1oV2x
	bDI7nPTybKlgNwPAf1Qc2co2NorpLRLs9ROGjAow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800ede19a3-261ee2a7-956a-4a6c-818b-8670b9a04335-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ba887e92713fff44e2fc219a6cbdfbe50e46560e82dd3118d4f566ca45d9696
Date: Sat, 9 Apr 2022 15:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649516878
