Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B246650
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659591052;
	h=To:Subject:From:Message-Id:Date;
	bh=plbXhsszikJBiPsmPhJ1NxKwBiF0ByCZw5siuWdy1hc=;
	b=S4e5qnTvtpzOiARLxONATuu5sKOkNhP517HOEHJDXVyx3En4uQlqR9uRkm5/iyd9
	Q8suFecO8KndyEGaLva+csLoWi/TH/XyBpIvrCU46fuHP3TEVOmGz0aV2+fSYImDcGw
	XertXqNyTOpNeh7AixOfB+Gm2C9qhX6mR3edHSvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659591052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=plbXhsszikJBiPsmPhJ1NxKwBiF0ByCZw5siuWdy1hc=;
	b=IxhUA2b+T9+SSFqzOPyGwg/zieL4qR9Ju02FXrVAitnUGLwlGllXjCkvVABFKY7z
	UcVnbY1/iNcXJ5L3j+ftQ4eM6JBKWiQ1M7A7M0R1/NCocgoQx6RLMIvhhO5+SpJCYiI
	RklswIQOoSmux0AccO8DRGi4zd7Y23d3vusmvYsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826755ccfc-81fa4443-c8fb-4e62-bcb2-b4a569d983b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8a6f2f6931d4b7f1bf667cd15e5bad8d0c311cafcff40eb26a1897b87c48ee1
Date: Thu, 4 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659591052
