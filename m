Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EAC2564
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646200584;
	h=To:Subject:From:Message-Id:Date;
	bh=mLO7p2FEAF4rTA8xzMSl77xeVgTm9vXRDsYADAHuIyY=;
	b=SJO3zDDOSUVpt9BXvhS0cbc0YUvKXlW8cIf/Vm4udxrHSrqfkrKv27uvWhQ3C0Ut
	D8S7XP2CM01D9HQTAL3R4n/lPumeCJb0A70vPPCB1xVx4qMTg2A3Hyd0Mx1Wsx3a0+J
	R9gB9g6NKOHHrpW1m6hHZCYRT7L+G2n+6u0fU/TY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646200584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mLO7p2FEAF4rTA8xzMSl77xeVgTm9vXRDsYADAHuIyY=;
	b=bzADrHjhIAG1KDDnb3tyIvnSbzkZRkF9FhkNKwL8nm1Nj5vhAAWvsJrzX5gMsC5x
	Vd42U4yR3qEGpADiqDzvkJyOSfqT5Zd8+AMgdtN+2i+7aEI2jeLslwZ/RRQWf3lKobs
	WNwX+Xejy8h0xontF21BiZuXDq6qFM6Pqit/zBhg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f49337a16-f7009b1d-ed0b-471c-bf5b-903a30fca162-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03d1083830b6c174cdaf9740ad0803ed441ee3553a344da6d80ad71cdd57716f
Date: Wed, 2 Mar 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646200584
