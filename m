Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5E310EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645752685;
	h=To:Subject:From:Message-Id:Date;
	bh=2Hsak2kWy1Bxw7hvisDmIt0vanIYoG5vBK3CbiYcu5o=;
	b=AAPQlMzQK8KhEuIOfEWgD/jSOAdxtL4dL698SzggiEWERTDQHXGTuJWpNuEP0esg
	1Y1GBkEPJ57zwBoaOiwGjQ9aNhM9F2TU3pqfsTdvgqlg034rwToaV5xwvS24y2jVzq9
	T3edeyxCf5wm/PfVNfmNm69rlXc+EGAs2ABLQHp0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645752685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Hsak2kWy1Bxw7hvisDmIt0vanIYoG5vBK3CbiYcu5o=;
	b=lQLbhl9ps2Q7HhpqHU0lQY/IRruv/A4Aa2VyM38EPNnAwsGGygqZdmEikYi6JO8f
	UHnza3Bp1wfQJqnWd829YW6ETC2tFBh9a0rv9jW5ZyHTwy1vQwYMzb1ldRQwMfMi1Sp
	Da19J8hExB6aWjm2K5cONEQCAyDh7FQ1fDIApDTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2e8110c6-2bfe77b8-edec-4356-a9cc-c2327ac4ef44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1879693fb921165c9b9873745027edef3a63da855c8e54689a8881a362ba1538
Date: Fri, 25 Feb 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645752684
