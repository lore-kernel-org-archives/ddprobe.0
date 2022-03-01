Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B671257CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646121085;
	h=To:Subject:From:Message-Id:Date;
	bh=DOQ/wO3F+cLLo0XpF4j8R/rhD650C51zIuLQQv4mHUE=;
	b=G5GO8LrTn6t9uf/5B4WmEomnyGapOmVcAjSR4VbMg2/Hqe75UI2m5eLGNEPuBRXM
	VNu0Z9vX6JgW+q6jEO56Y1GPD2lRvFYKXxgeGkTzubEOcDvF0zEFVPLJ4EPr15P9V1t
	aiyW1/+q7dmBSZA+DN4LTEr78QMdfYzAudyFS5dw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646121085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DOQ/wO3F+cLLo0XpF4j8R/rhD650C51zIuLQQv4mHUE=;
	b=EU9yyzrEBQM8mZzbranfpHiA22qngZrE4aOjj9htBCg2p+w5VCmwMWhxYT5baqqu
	tIhWk3ctfpuf7DyFSXVWK1XKr5ZwK39TsZFn2XevvRXVXsvlkgvm92izwpSFeEDwPnA
	hrmG5t2nFyyEUgENyRG7u7/dqnxf2DL79KDLy65E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f447667c2-de869277-cd7f-43c0-a443-3b6e6463b20b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96b759b9cd4ea6a8f62b3ede4a951fb384744f84ae983fad4227b50434c0c6a9
Date: Tue, 1 Mar 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646121084
