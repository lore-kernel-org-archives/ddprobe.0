Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A477B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647726985;
	h=To:Subject:From:Message-Id:Date;
	bh=cXYhlQ2Gkryw0oTBjtW9kAkmIXe8RdelsWX8Pl/j5zs=;
	b=HWODf/LS9DUQvKHYJCIw4SGZLEdieYxezzBwa+2djXaUOo1buGjvovlsMmgpSYPL
	PmT9KF5FXT1ExMAX392xIRN0jasmmzLhBroTtbKY48+mhQb9ROrTYPhiSI1wC8Ku59/
	Q++5LRBSscxJ2RLmtDA+QV+kP5X1J3hFj/1mYTeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647726985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cXYhlQ2Gkryw0oTBjtW9kAkmIXe8RdelsWX8Pl/j5zs=;
	b=Uc5akjGpvVFxmbuJf+lZIrwMidnX71O4B4JE5rAF/Wt/DeDMMcakVkBdNN1UtowM
	eXbStr7NXiM0CJTZnMEi1DBL2MciYVqyuuV/ai9VNutSXLub6xyXB8u9lijcH8ioTkp
	TAYzYpwwMttCnVx0SgX+wZeunl+u687n7A16Gosk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa42e7e3f-4135c272-d91b-4b6e-b24b-0eb777ede18b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d911cd07f759e91e05f89675e2e88249d70039f9908d706c1e37fa376e751bc
Date: Sat, 19 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647726984
