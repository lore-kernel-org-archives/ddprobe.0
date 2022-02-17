Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8244A3D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645096885;
	h=To:Subject:From:Message-Id:Date;
	bh=Wd/3fjsVHALkr/r5A9TgVNs61QhI5HfWokG2FMoNw6I=;
	b=Dw6eKcdk1tm/1YKnycw+XrhJowf1KU+Yz/7VC/+MxeagSCj0n7yYR/Is/sS3mg/e
	tu4xAlT+EtZPafWFGzhkYGonWTCusVrPQVeF/9rfOWHCwbnGTPZ6IpXliIEH58bVGWQ
	Esa2HUtVZOgi3zuYl49H8PoGNv+OoPrI1vMC6WeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645096885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wd/3fjsVHALkr/r5A9TgVNs61QhI5HfWokG2FMoNw6I=;
	b=DbnJ7GKNhyHfLpjRr7vXEm+B0fBQzKyAOrwElHLnGdJ5mSBG467cWR6jZBqfLCAp
	yZ8PfENZeum0D2Er3l2Eei7RXzGGeHVLkp7UpDzASRoOLVsjr5oPM3/kRcMpNZRqvx6
	si1XkdMZBLp02ByXGUhsyu7R0211FR0P1RPOHWlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f076a5a16-59f53df6-6d08-46dc-9aa6-5eb7cabf9cc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec7e0aa1e8fe454fcca2b8f44c73a62b53be7ed4daec49346468a4abe8e2432f
Date: Thu, 17 Feb 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645096884
