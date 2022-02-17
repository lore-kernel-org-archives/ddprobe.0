Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695203670
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645069584;
	h=To:Subject:From:Message-Id:Date;
	bh=n2vGF8iinE/Ab2brfFt0BYXCJDR4tNpkvVKFKa6RSQA=;
	b=JVr9TJbvU+NcxIBYQ56gyAd+cQogFHhQSGHeAFfUjd9vTcJsb+0ZXF4YFx+FfUAX
	iKAZs0VCvYc/0nSf4PkgJIcgZsuD0xeP3Q8YHmncLcXoDYu547adPmbWv0eN6kxnJSp
	3hOi1mEGyYPv0ja+hnUIETdb8+SzG2wEdkcFVFlg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645069584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n2vGF8iinE/Ab2brfFt0BYXCJDR4tNpkvVKFKa6RSQA=;
	b=Wm6M4+860nOz1HdHM9iOAorhe2+qcQUvefg8kAwic76qPoS4D3noOmq8SOHE5qgi
	xbmAWILnFgDqIAAPDOh0dOGrcQXexS3F+a32D+T8AnJuYuWGlP2Y0uBuHowtaWvycnu
	0jF7QEa/+GWCkrsPO9X5LhCfBFLDS+m58/6B4LaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05c9c9c0-fd1f98fc-c16b-49fd-9029-e793d124bed4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cef52aa194990dd6feb3d3f7858e5ee82fb111aeb7787a7a511c9bc7ff5b6b5a
Date: Thu, 17 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645069584
