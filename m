Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0650F7A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 05:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655357939;
	h=To:Subject:From:Message-Id:Date;
	bh=o8Z08DwoREtYbNFvXmTSITdNRqMS1IuS2lRbn6/g580=;
	b=d+p7XB/RQ1RGBcoh8Ez2e9NR9r07rTzBsCMyMo8R/ABnNLjFBYo8z7ULBvgZ22d6
	lZSzcDkSfHT8yUN7mxjoLfKkmmhujzjPWBQ2vkU/sgaV36tRO7jXf2vc/XZay5LtURX
	kSnFrXfDWmH0VQFiD9r2d8B/xbWZq8qzgctJanBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655357939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o8Z08DwoREtYbNFvXmTSITdNRqMS1IuS2lRbn6/g580=;
	b=KcXEiAz5ysQYhcdTqyUdNp4valnEQG3BQ8HgHnRKmMU8PtdiiHMBpm1/908OPe6P
	mBGf06zhgtZbfCb5oEp5IAfFvV8bpG9CxHA9pU1bLubSltamdqlB6CrBSVRXvkFB1ie
	GFDhY+189bkcGrMiNmAgf/2dncvHkRfEBIslcpWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b059e3c-ab8ff61a-e4d7-4047-b2e3-9ba54771ad1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45d44ba0de4ad886854cb84126ec4ff469598691414809c32827933ef9402a53
Date: Thu, 16 Jun 2022 05:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655357939
