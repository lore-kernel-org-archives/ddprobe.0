Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2405EB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647819985;
	h=To:Subject:From:Message-Id:Date;
	bh=t/ebuMTeEalrB1NJ2mX4ouGv+pDpv1ltAfy7XTHSPFo=;
	b=TPWpoj58VybKAqBSFJGPZLfmahIFXDt8syxkFxYvM6PfZDYWlVrKtXTvFeVu/qQ2
	1lfCVLSrhpy5A6/OFMdrsEx9OETMxUyXX0K9mun1y+qSlelw510yT45pwKjVzPMqTrT
	00Je0ViFIWdtIENT4+Vi5EOrjVr3K8oeRSt2xEWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647819985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t/ebuMTeEalrB1NJ2mX4ouGv+pDpv1ltAfy7XTHSPFo=;
	b=Q9sOqPeh1d0nKnb0LFs0CfMHlPoEyS4QsxxLuhYCnCcBGixKFb/GyA3BzmMY6Jin
	k+DyuqjbMSySJBtuJhXEvohhxcAwZa5FQ/632WC3emCy3C2h/6c6CmttuqdLuw/omAH
	wDOuDOC53kEZHV8ysxfFHrqx5HZk4n3bfzPaFazw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9b98f82-fb0082ba-eed4-4ac0-94a6-a05e7ac96e0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7c855a85d846af986683db39a6936bfabfe33123c68e98d1284bdeae1e8f211
Date: Sun, 20 Mar 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647819984
