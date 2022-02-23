Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17796AA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645647385;
	h=To:Subject:From:Message-Id:Date;
	bh=p+q6UF/LFUCMjejZmkDGTLmjdT+y993kvQEch8GzNEw=;
	b=Lgn0u8HbZ0QugOarSemB/5HMnixD+GDe+qW7aB2f/M11Qow3OsTZVJKLLK1wBLNv
	X0YkaIE/KYVW6FRKi3MzIIROeUQIp30x+2aeDR43xx8Q6jS4XfXxX4O21ppN7Ag2htq
	rtlzlmRoA8qHC67mHOWc3PJ8KqlgJ/55hMM8mcqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645647385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p+q6UF/LFUCMjejZmkDGTLmjdT+y993kvQEch8GzNEw=;
	b=F/GPX3sJsLUepeXUnMS0K87PS9asghvJ8gBz1+/YmrNZPrNC6uHh2BNcC3kdIr6j
	A9h8zUxHrVkDyJIE/tWtIynWjTf3DrEztBvtKNF//loR7mLMtcIM4GxkcSJyXPd8vz3
	Dq2g/cVi96atI2Wbg5QyYWAXoUo87AOljCf3nfDA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f283a512a-2bf008c8-5819-4b3a-8c72-ff79d2ce34ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b583394d69498aa26336b226e5e132bdae12c800aac15ac064f2c1eb04db1c0
Date: Wed, 23 Feb 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645647384
