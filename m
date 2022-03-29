Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60E420E5
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 09:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648544998;
	h=To:Subject:From:Message-Id:Date;
	bh=ZQUDDlZPE8M7Rx1gNUzhCxGVMoHsLy/PYKq04mq8owE=;
	b=HvD7ZrCCrkQPnEIkN6KhA5QYx8cDZfwkPwaobVRC+oTPyGMVbUJyUDvwg0CX+3Xs
	k7xT/2bldtlEFmx6YDS8mH4GikwdeElwPwr2vI8O/cQFauWOgONeJF3Fv5hQyJpO2Rv
	YRqTBzg+1M8JEvcDhx6ZYaLJY0/UkXfREF2pbspY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648544998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZQUDDlZPE8M7Rx1gNUzhCxGVMoHsLy/PYKq04mq8owE=;
	b=kd6aV/Q8jO+KFrf6fw3O/5QlrfOHhA+n9ViBF3HypyV/jEaw4MCGRu6tSGAWG6BL
	U8aqHufifkgGMlB0/ohK51Ax+fWMd4+2jLqi6OJZagmWBwj74HCkDqO2x3eDHCmD+nk
	+eLovnfimod65QHhC7VMqDy/ogLtFOA2DJpQ2LSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd4f06383-06acde6f-a1c2-429f-96e3-94429aae9643-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 860960ec3208c59c277a227dea7da68dac3dc20a2d9738dee3211c33e9e453e2
Date: Tue, 29 Mar 2022 09:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648544998
