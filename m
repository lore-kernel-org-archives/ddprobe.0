Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6A97A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647582684;
	h=To:Subject:From:Message-Id:Date;
	bh=+HeEQAeyJUPkwprUhtB+NUEPR7cYPN0YvfL4N8NlSvs=;
	b=IStkAyDKUKSl2wvzGud5eaabAszesclVklB7DFOgWRFkXELjUI+6CJiJiHMwlz/x
	x+XyxJkdnwL4gxn2saQ31tVZNcEPME8Xg6sFyvbmGXTp88Zg7Y3VcpbDr2eVAXoxJfJ
	8Swj+gkGOBQ1pTSQMF9Uh3aAdITLdBPGYMX8/SUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647582684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+HeEQAeyJUPkwprUhtB+NUEPR7cYPN0YvfL4N8NlSvs=;
	b=fiSFiTJV55jDp2Wv4u5/eW4t61QTbqKcdUWuw9Oj/07y7Wxk/loNvUkRclBy7bzS
	xYJThdV2o7+WriEaN/HohovhdInQKcjRK1ArJRbY+pkrNUZk0ZrSjFWu8nR7pGI2065
	Vtwyrm7+qTE49Vp+b/AKfgZS7bpBmc6IVTx4xeOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b94a64e-33639ba9-c1e5-4536-809e-5f4afab3bbdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb8a8467e7b8602aa908b9dc7a33680e935dc6e89b78d5684c0b2aa73e8f4130
Date: Fri, 18 Mar 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647582684
