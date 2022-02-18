Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B744AB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645205485;
	h=To:Subject:From:Message-Id:Date;
	bh=fAawf3kRdXNCS6Kh3ME1hMBWMq0f+NnnCqjvn4n2vJM=;
	b=Nmw8Hx3PBuDdBBDIxwbLY0ZXColiWqxQoQOGDhxeFUx0esxxhZJvCd2WZiDIFSI3
	t/5HwAXnHccZhv8SaU6FTi+QAEBDO5xffF0TT0nj3TLIGZQiRPx+E6y2KsY7ZtclFGL
	TfwUZWLlXydtsxgFepV6bxNsF8Sm1vQoKBu0kjiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645205485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fAawf3kRdXNCS6Kh3ME1hMBWMq0f+NnnCqjvn4n2vJM=;
	b=G9hABPKz3Esvhm9tTa97paXzYNNUJH/6JuK7BFUVrEQ4s+m70yMLkFXc4SlsW25u
	4hesdN7FaQ37JsTi2daSg+IQL0XjUwfb+AxMJws5fruWSjqBAH0Hf6Qwi1JbBc7tRZX
	02zZ2ACtOen2w86VsBczTuJpyNI71Y+6EkVZOHsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0de37520-3c4562df-e46e-48f0-a524-18ad8bcb9964-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5632d00fe212edef9963ae433af20099c2221934a37be3ad95a65a00990744c3
Date: Fri, 18 Feb 2022 17:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645205484
