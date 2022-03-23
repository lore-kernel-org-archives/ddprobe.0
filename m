Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE689A3D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648024284;
	h=To:Subject:From:Message-Id:Date;
	bh=nVNQi68kGVdA9GdQ/DsMwrXaTZS8xxPGPh+2Lu0IIec=;
	b=msbf+dYF7X/b7kc85eOLLHYwaH1xqhTBzx5Sw4exp+98ckou99ptt6elzij4qRQX
	ODa/YLrtHuxkd1uOXTyOEjh/SI6YPYd/T+3qhgilzugLt7Pj8tcA3qVVGNPRUAke3ei
	KcHRTIn+p9FYHKz8uX4b9HWjlDmAbNi+WN6id4/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648024284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVNQi68kGVdA9GdQ/DsMwrXaTZS8xxPGPh+2Lu0IIec=;
	b=Ky0hVac9fv2sSxVtTMEy2aed5TYtwjKSMwQYQnBh+LTH3sgNoEJIkC9W+MbSYnJl
	6LDK9BrA6psqUJ0viqR9RkdG4sJzM58IDkXRR8nA7NIH0ew873HlymadLa9oxCPJdtT
	LCCHoPiBhzudQL+JjfsR4WHSum71Zl5cUIF9dvCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5e6ee1f-539854ad-0d39-413d-bf1f-3f3c3c6249cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fabecd09ccb334aa9fcf15574e4f087a6a328a747f33419587780a65848d273
Date: Wed, 23 Mar 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648024284
