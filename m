Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6292A10E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656659812;
	h=To:Subject:From:Message-Id:Date;
	bh=+RgtcMvGoSuz5Jh0lXosfi9AO7IZdY8zxwlrloDjJCE=;
	b=ATd7KG+DIcpooKjLVvsl8U4/ttLaK08s2rk9Xiqpx/ktby9pOUYgAX5307+td8wL
	tXiebehXvUJ/WwditEWn3aNbOS6srM0ZbW4kJQWSMEMc2urcbFonXdU+Y8bcNjdCPaY
	/+DPaoob/SdaYLDpIUyr6l9kd+KFnj5A6dT0XpJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656659812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+RgtcMvGoSuz5Jh0lXosfi9AO7IZdY8zxwlrloDjJCE=;
	b=bGd9tBSnbV1LMm7mLhre+gkL32/72FqefEWtGiUIejV1dpzyKZd4e6go1X3lCcmq
	NKJ5yzChYsk4tZsPiM4bkl6F+nHqqX+LT35/sQIKMm38jlggNBHlGfKZItjmXsVK908
	7HpctIdFaJm815c7PFSd/sg9zgynXQXzyZmo1c08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b89e9fe2-46fe75a4-163c-4960-939a-ecfbf961f913-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f54383e8d98667cc1a93a547908e6781e1ee7176dfc464f55313db528bf58d8f
Date: Fri, 1 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656659812
