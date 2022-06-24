Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0DA3D65
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656087412;
	h=To:Subject:From:Message-Id:Date;
	bh=PRnQducTpdnvXPw5j5GW+lvKow94S0mh1DztqmIYgpI=;
	b=hZvKsd5jzLWk83gF3cHuIKa0qehI4cBdwX8zrq9e3QIdDf/jsk4KdhOqufnYeB99
	7elBtfrd316w08bm6n/DZu3ajOSBj7qam4oC1AHHVHGlaQZz8KLPDernSsU/jBMx/Ow
	IBGGiJXBZ89IHnGr2mshqAiQjnh6d9SvN4MfJLOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656087412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PRnQducTpdnvXPw5j5GW+lvKow94S0mh1DztqmIYgpI=;
	b=GmiXkMGIpPtJHObB5eaFkoQ8m24rZDgnlsNOZreI1jeJUPWnwCL9lEapZqJoI6DV
	5SIkMoAsYDwoIBDpElyxXEOIBBkGPwij+v4AMH6I6/i5PUQD6qBkWu9VZ4WTOfu7O77
	tGY0B5mIQvd9Sv4kuaeikgBvHlO9RiqyqyR98GPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196807e71-996768b3-9c6c-4102-9cc7-a8de1e99e0bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b82f13898c3b79d6195163299242d0c493c212d2ac07e0c58d7679fbaf6a4d11
Date: Fri, 24 Jun 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656087412
