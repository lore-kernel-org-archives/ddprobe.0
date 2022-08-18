Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6079C7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660790452;
	h=To:Subject:From:Message-Id:Date;
	bh=HgyVcPAyrp/7wlz0moV894BKkA6+Ok54yOQDicN3hjI=;
	b=gJRnBQ5g6fv75wIydSi1QynxM479NbSqGcprZ2Lx7l6SDxNa0t3+qiACRkfdUNL7
	dW2rPwxuD999BgVd5Jp9apedkN9k5p54syn6CLhVxVJSdJfNrJZ83Tte+QTwHOnCmgM
	vNVf/3YORsZl9cxMxGmp82CNtxt10x1fP61JFlVQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660790452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HgyVcPAyrp/7wlz0moV894BKkA6+Ok54yOQDicN3hjI=;
	b=c/irYzybT4lv5pGwe4MIcFNFSyQ7/E6vLdEyPqqnW1Nr4kW8I179xxUCV63grF5W
	S0sC04wUFlejoDNsgZQu/J1OsfWnkvfsD33swhwgyzTvv0YIH5DSMB4rHS9cjhcZ9EO
	OZoTBwofrxwc4LRaxbYIbn1FVaSSil9+0fJZ10as=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aed3316c-abfda3ae-2c32-4604-964f-d41d6b989c75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0ecb344cb2bfed2ae44a4fb80176f07cd33872c1a27be9ad694ccb6d748bd35
Date: Thu, 18 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660790452
