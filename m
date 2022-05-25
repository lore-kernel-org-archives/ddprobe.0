Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123C6A56
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 07:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653462899;
	h=To:Subject:From:Message-Id:Date;
	bh=8uY4VPBq416oR+yoOD2QrMsPlsKUg9Mg76AmvW/Vg9U=;
	b=XxBgzJkFnQooX79AWUhS7XpJcR0Cu/wf7lR6hWRKhB0tPwgJ0BGbW38P+mrO7U31
	h9lcMAS30DbStB6AV9tXXigs19x346+LeQgNYdrSTpfckCjDnLq279ouBHWRVcsOVmZ
	gYVty1/aWtJZeWF+P4xYWlz7RnJVR4qzH7xuO9Y0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653462899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8uY4VPBq416oR+yoOD2QrMsPlsKUg9Mg76AmvW/Vg9U=;
	b=BpHJneHPpLggARZC5LJXq/MWgYctKbzj8EhlqGc7IjfQwxYCcGIpFTftkLzPi/9q
	CiLiGLFqDpeOIhRdnFPTMLtyClDR6p+MpPX8kYxqTOC6PsQn0DPtIcuXspFSKuo94cA
	ZS0JZ3esdU22KEtYjIN6JZEGan+Vg5JQEA99ClBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fa119a59-bd047666-900b-433f-b42c-011faf0d950d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58a046deadae90b8757a220250a62168a9abdece8db5dbaee5ed2d62b10a1ed4
Date: Wed, 25 May 2022 07:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653462899
