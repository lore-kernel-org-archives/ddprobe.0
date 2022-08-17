Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3052F2B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660776052;
	h=To:Subject:From:Message-Id:Date;
	bh=kSa6VvanV252Fy5HcxZPUVUeJGgveAyYc1C4znvrc+A=;
	b=RjsSkgJT98R5LvPhrKZ0AocQx3g99Yjie0dqLxK27Z4GOfDxlJfqOndj6kax13l0
	0/h5IbDYRSTBjh2Ca28iQKqf1RxVZ8LfMVqlwUhVx8M+/7M4bpP+DoqIDRATtVozvD9
	ET/UZMSCkgmgC1gi1/y9svu40uD+YB2ZtMmgv9YI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660776052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kSa6VvanV252Fy5HcxZPUVUeJGgveAyYc1C4znvrc+A=;
	b=LBtD34S621b/+KmF5V0kUEuQeXeWTLlbTG1qvOswDcr1r0PXsR85tpoVRzrxGOYY
	jvNNKHXezyUK3pzKkxYcCdb41kpDJGNWeeFU+NMz5HSGUwRo+C6IWqmFbItrrSMeSbH
	MDJ6X8Rxji5CWIkX/wYqLUeyhtds3W6hTnC3x5Ps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182adf7775c-2e2f7695-c85c-429d-b911-d1417b4867ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 979350ac3320a152bf490d8d9c10e859fd6803916e0e4b6767c167f522336762
Date: Wed, 17 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660776052
