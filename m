Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DB07C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 15:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654875659;
	h=To:Subject:From:Message-Id:Date;
	bh=XNZAEqzVK6pYo8JOX0EuquozHN0yrveiUpmhsOTcKNU=;
	b=GWDnBva8lTumu7o6KJnyVKmr7yJWMmHRiQKQMFlAFk3oOX2o4yFpJiNXg2Frkebb
	2oTH448QYX6R2VviN4W/VAsSzE3xyDKUTbGXOPMvPbevwFWpFRik/sh1ZoT1ibHan6O
	Xxk/djZgcrLzFTieymmAr80mO0tC+t7/hfkD4jFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654875659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XNZAEqzVK6pYo8JOX0EuquozHN0yrveiUpmhsOTcKNU=;
	b=f7uh4oJ18U2D80Gad9qngXCl6WZz1pMzQ5+cjrclRcWoc3wjfyPJ0Q72gytlGhc0
	0NYZ9H2bH0IWeh/UwsA/5MYdc9xc8FL/ThrJpCyWyduL1brOopj/Vsx8BDeutPsfgNq
	Zq454d+pNaWjIonZF0vNH93yPddtP+SieQli3AZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e469c2a-10ba2fea-2af2-4c09-b989-2be0963954d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be6c322f28eaf4b10f76aec8777c5f3436efc7ed653b5da6ec952457f87a8757
Date: Fri, 10 Jun 2022 15:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654875659
