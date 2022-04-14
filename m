Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BD715A7
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 19:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649962858;
	h=To:Subject:From:Message-Id:Date;
	bh=ygL+m/4EzIrbrjAE/VVtA9ew1ox5MIPNTiHfJtTFX44=;
	b=Oo/ygvYLqysfj9FPjFGfkx8m4qNZuU/oZFYbLzIGmY8iHktBBDr4zbl6BBBjaxVf
	tECYV0dtMPLb9P6ikW5HyySqU5j1lulxVWc4tHlGOP/B7+9ouedPIxpOYcadAc1dD+v
	krMtkCTzzFrBpg8vacovflHPR9p7ZuJfwBgv0Hro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649962858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ygL+m/4EzIrbrjAE/VVtA9ew1ox5MIPNTiHfJtTFX44=;
	b=PUEAYHOIM3VizkB2Vod3bKcgGMjKNoWZl7o6Ni0dEtviWCqAZrIZjWYFXv4rhHdk
	BWyFBnYRWLThPoVWMoHHIshsshbararOVzSGnASR9nL0ULg3jXs58jgIVsS2JAYu09p
	2I4JaptRXtHU6b+7gOn3IQILI+lDkbput5G7nR44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029733750-b73a281a-5821-4a3d-81b9-96072b3bd03f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e18f717949353a9b851d29c3da67af1dfad6131b4d45ec4e9e13311f05dfed3
Date: Thu, 14 Apr 2022 19:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649962858
