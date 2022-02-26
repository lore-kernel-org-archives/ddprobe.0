Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAB03B21
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645876884;
	h=To:Subject:From:Message-Id:Date;
	bh=WN94aGhYY4jt4V5aiDriUDuGQsctKeL0LcdR+Jl3K6k=;
	b=kHfE8AZU9EOSLzv7rrwYa0su7XhtAQGWa5wzKlPUT7Uxu7eH5A75xuTOhu3QBUPs
	UL7w95F8DGwlhvrhgIRKmuJxT/qLS7W4Tn/yioIJIK+3+VPXdNY8u1UyMUI8qGQD94j
	faJpo0cEc3R5EiHKVBOzw2JSkzsaznvOZGMzBASw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645876884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WN94aGhYY4jt4V5aiDriUDuGQsctKeL0LcdR+Jl3K6k=;
	b=S0clNc9VPCu2AScoPp6PxCOmkxNHZQmwqWt4wolnqqDzBc+PGOpOyFnbg3GUyljP
	0wOcZswrsa5GmEuaBMwUixjypfFaGIzVteI0bJ+KgFaC5nGrqTZP0y6l52sMbvYXDdp
	dD2gdEom8nBc3jEWWAbyr3DwetIe3i5t5iOKUJ3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35e834f3-25b5bcd1-d417-4163-995d-a59633ad9382-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e0a5822b91c80715e0afa64603edaffa52543ebed226259974eb48d6af30d65
Date: Sat, 26 Feb 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645876884
