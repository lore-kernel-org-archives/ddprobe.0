Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2D34A9F
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647554785;
	h=To:Subject:From:Message-Id:Date;
	bh=1pGQmkvlVPDf1xwrmjFmd6/DCn6K7V02377PUObMeIs=;
	b=YcDPf7ygkO2AmT68z9RJm5I2PsOQUF5xkzqFy3439hR8IrQmx4keAS4Ru+/a9JQv
	pp+Lqxbm/PqEqgJcJaujE5snohatLqp1MelouvVKcC+cLjyWznx+2+YCasbl+ZYJQOr
	tVCuu1JKVU1Av8GMhuYiaMxTH6dyD28FeJdErFAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647554785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1pGQmkvlVPDf1xwrmjFmd6/DCn6K7V02377PUObMeIs=;
	b=HgSV9gutnvfWO3Q05//VioFzptcjvdgkoPfKV5vsLA3KFXRSSioo49NprYVOty/B
	jHi8qTr2/gb9QMYKp99cWY4ZTuBwEF/YhMo7cu2bwfiUlYHaE+IxMn3yho2BbJVMBlS
	Bwy6uS8Y/H0GqMr+w/Wdqv1M6CHi8qvNg8JfO8tY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99eaee92-be190996-39da-4ce6-b7d9-fa9a6d566ef0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90d0d54cc0b6ca45a51ca3b1ffa7a883651cd3bea74a7fbeed09769e44aa6e4c
Date: Thu, 17 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647554784
