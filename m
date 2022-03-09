Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE9817C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646820385;
	h=To:Subject:From:Message-Id:Date;
	bh=elFUiy+2EfZEbcMqVCMTi7kGYH3BmS+WaxspnZQAXic=;
	b=ioHiZ+bxKVg0XTVLzwpTV3nDM5foBobPSjHrIUwa7rMI4v0bZffhsnR28rG05YJr
	tPQFwdfotyAxRpbZ7Mz2Pp4qa3WZBl6bstBFAeevelMYgxCEmOJk/8In2AFKqFAb9uE
	NqLlp77+GaGd0eNeqAECmiIoA37iY7n4qt0JFzfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646820385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=elFUiy+2EfZEbcMqVCMTi7kGYH3BmS+WaxspnZQAXic=;
	b=gHp0wEt+umL7YGEWc+XjN6pusPEyftgLGr+mYLMtAVipUAscMfGeLGfRmSleq8p5
	WdBSn94VFSmaMificAp7j6lmmxQlfV/qzeZRWfAKL2aVCvgDGoHpisRh3ENVvjFzgs3
	/LezT/qKPyV/OkAjeNLHx3y4QgDhn5Ga5tzNgndg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e24dffa-1a936578-92a1-4959-a620-1215d2c3b7b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e893463a57066d4754035598478ff21a28f5a95e6d192a76d10d4140df74981
Date: Wed, 9 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646820384
