Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5577A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646072484;
	h=To:Subject:From:Message-Id:Date;
	bh=YONNZaFzo7/Y+N2iLdR6RXXU0HfTzgaBIqwJJbABlLA=;
	b=CWOinUtmY3BQBaAqXORnGiQL/zGzvkOpGRwjapF5IwaSfX+u7O1z5z9QORDK5dOP
	9LPvpvUEeQVp+AVhvmEheeXPUwFyv8Ua9hL9tZ9wDD0GCHuU/B/caaCqs2grWe7jd3M
	znDcyn78AnaFXinJbUXfZWpBzsAIrKWyXW0j69MA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646072484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YONNZaFzo7/Y+N2iLdR6RXXU0HfTzgaBIqwJJbABlLA=;
	b=Wc4ldMz0jAxlaOUzm5uRJF8LYbeWQv1Ww5Ted6Ntfw1PII/WfyQolvY7KVHWetaL
	/8LIAsL7yKkVxuSg/8Mx9J2jkW3PZA72csoe06VSYya9lt02OInfjwO60sjv/cErs+W
	z3+5PZBdyN2lz4YESS/7xiG+7j/51Wg9lY0DoFx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4190d381-792b1bbd-67f4-45fc-aa1e-53b1c0eb9d52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ab63378f35240753c47be3da69ba6a8be31c6c3e11bead76d30f534cd3ed1d4
Date: Mon, 28 Feb 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646072484
