Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EEB363
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 14:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654180499;
	h=To:Subject:From:Message-Id:Date;
	bh=KJFGLv2NkGxqpYk+KfeT2TOLnsB3f6wo/QurwHWDh9o=;
	b=FjjUIepKSUPbkvOuZsOVCxjGGhWuHznZXs1Lu2gn4aeyWVDtOdcQgKs88P3XV8TQ
	DH7luFwg9opJdUUNwVD8O53c73L7diXnb8hhFm6Xju2Onqy8FC4kU+WADDep/UwBWh2
	2oNg0IE5Xemx8tuJf2OyqglM0PjpH4xfrSL0Jnqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654180499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KJFGLv2NkGxqpYk+KfeT2TOLnsB3f6wo/QurwHWDh9o=;
	b=T4ztFaX2GDoH70fPHPqbe20OuvEbo2+6LUv0fGHK2AtWxuz6IDjV9nWUmdx3TEjT
	O4HZ6L/mHcaJcWm2VQ/fCy+fGiEfJOHyERYsnkaDcbfO1Tx+uIgvOOKsXmKXwBi2Q5K
	W+uzsA/K5leg4bqXVkMUb4sO7NUoyw/AQxfIITZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018124d74f38-f7b9c3f4-33d9-4af1-b2f3-ce01c659ed7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97b58525f22def06f668e50ba3f587908ac3e69830ddaa131fd1f3b4127cb199
Date: Thu, 2 Jun 2022 14:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654180499
