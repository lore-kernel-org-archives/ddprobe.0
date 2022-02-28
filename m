Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8205A513F
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646035884;
	h=To:Subject:From:Message-Id:Date;
	bh=RoXGHAep01degGNBlC9VO5Br+cm7G2Ku/rt/oHOlI/Q=;
	b=InDmtcULUlpq6a8fzZsIPjuXEjFxiVP3RJcQ/nNpFjbQiqr6BR7ngO6upRMG1MBT
	iY2e0v0kbPknM4vwQGUXMuHawAQf0uVv1uR8lO6phSJPQ15w94X0LVAZQrr1M9X8iGx
	eLUbwRj2j3cHToCSeYYs6/qn8zmtYvfVce0Fpe4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646035884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RoXGHAep01degGNBlC9VO5Br+cm7G2Ku/rt/oHOlI/Q=;
	b=Css+CYtCLNYrLxRv7OJVyKB3nuvfMBlRYWn/GU8gmi6xi3/Zxgeh29yTU90cJzV3
	lLY2XQe1tw0S9VohCPzJPuOUGqKXEMMaL3589txWScxxGEz5m+rpiN9ChMJKHtGlZN0
	O9dUOh+w4zvLcBSXE+SsdRFtwdz0Wk0t6amaSlzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f625ab2-ebf2efce-0c79-4f10-9762-c79c03a6c9fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9fefaa037e135bad0015d4db37554c627f9aea64718273f569332ce7000f675
Date: Mon, 28 Feb 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646035884
