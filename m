Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CBC1391
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648029084;
	h=To:Subject:From:Message-Id:Date;
	bh=WH9F024DdAKi9h/nW9DcbfYZjM0u68a01jEayZSukBc=;
	b=a8MF6ejV/2QK21dW/JDd7TZHqsWSUYOfHbvbaCqJfKIuaj7BISTj48V/X3arSHRO
	VupgxIoY352Fc/NEbBikcW+pFGEebZbeBnPfMTuT2zqb0cnTqUJETpDPWw23XEK4baS
	/sST9/lJDzpBTPhGWPUY62ZzRTngYQfgY1DpqSSI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648029084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WH9F024DdAKi9h/nW9DcbfYZjM0u68a01jEayZSukBc=;
	b=GYAXtdAB/JDnWxlhjB6rQvyZGFuL6RWhkCtDxfvXlWs3H+INVsvu0abIdb/Y1hqq
	WUe+QZqzXoQvdyiQE30US9iFAgyDTmxrL4qFqLl3Mn+oBfUAznjmHre7AMSMp6BC8OH
	rPL7ynbhRQi6mNFchWcRLbL8/gDiHiTc4BQrvdUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6302c76-fafcd40e-27a5-4ffb-9086-64770a808fc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d6cd5804fc96116039d4d1c9278b0457ede7fa1efb7b2381b68d166b61da814
Date: Wed, 23 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648029084
