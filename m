Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982C2211B
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647025584;
	h=To:Subject:From:Message-Id:Date;
	bh=2aIiAqg+wLY8WPHNmkkIZX9jPIx2G55q1qipomcbhs4=;
	b=gddEjWmCBeVXW9oN+Wq3dqBS5XvzPME1HFctvbj3RGT1pe0Xc+8YxtUpq9JxeJB4
	fkNjDgiVKJmUjp2G9CWGJbtw1NZWrll9b69srG4pDeb75JEfAHgg59Vr0Rri/kIeGxR
	SktQiipDdVA5O7QTChHevn1bmEqzAmP8wTUqe32I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647025584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2aIiAqg+wLY8WPHNmkkIZX9jPIx2G55q1qipomcbhs4=;
	b=Cc8fnN8/rh3X2i2tnL+S4FEO/vZJyMdJOp1NlZXE6chXtKaSrD8NUWW+yhSCwlEl
	0ZFwUTbjqQP8S84ar8DYUaKD9+4dI9djDTEUA8Pbw1b1XjzV/fjavpiZ8Surr2j8V9w
	28oDSiU9Uvhincos+WY+m1v45OIPo8DtNTFak3pg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a5ffa94-0f443f4b-d968-40db-9851-beaff5835a13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea087e7bfecd7396ffd7309e3cfd654408c73b2d1b4c006c4426f55718bee9bd
Date: Fri, 11 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647025584
