Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8072917E
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646126485;
	h=To:Subject:From:Message-Id:Date;
	bh=Kl5tSW93Nhxl52bSLz7vTQFztWiNDdhqc5Bxu9nlC10=;
	b=DrZx5aEDOngMvYJytCcsTW6AGvRVpxEaxifd1sF7ZiRceGJxmrBF3j9jEJcFR8Wy
	DOEJD4iYIzgWcYRQMCIdT/S1spVsRt47c+Yv0jN8c2x3kOjeQmz5X90ks5LdTSBi745
	jNw/Oy0hAjzw2+rLSG6NrvZ8TNqxyRHxUNjtGMKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646126485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kl5tSW93Nhxl52bSLz7vTQFztWiNDdhqc5Bxu9nlC10=;
	b=Nw53XUThoJyzQYEJfu8UTIBkfB4JDunsQJQ7BSMA31wWG37R1QJuU5QIF/4yOZ5/
	QJzsYHKbKQvb3voPlj2+aGnd5EwgqGOOOZMtdBSa3tmMIglX1cwSSd359V/zKOWg/dT
	nrX8KF2Qz1zCONTYu898iga7ecjBsqOzdISOh60s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f44c8cd76-fd9f9b5b-0bb4-4fb9-b893-4df3bc55270c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16463f30388d79b4f1f55ad1b91c42e4d92ddc61476ceae800fcbecdfe108661
Date: Tue, 1 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646126484
