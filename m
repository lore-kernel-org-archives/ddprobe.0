Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFA138EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645869385;
	h=To:Subject:From:Message-Id:Date;
	bh=0gP+4QzbIWlx3bjrjWqIMceuqr2Otn3L/SMJHErHcRQ=;
	b=lVdhYZf7wUZnKsPcz4jIjDRmqvjYepXv++ULEDswouS5pvMrACjJ9LI9CUFRVfRT
	kHQd4vWTTYRrh58llbLjhWywqDvRxaw0KtRQoHhPnRGBypR1bHgav3CeR5QbirYi4Ac
	30wDp8Na1RKI2VgWrBE2UB5QVIeDINLRNgWuXeZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645869385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0gP+4QzbIWlx3bjrjWqIMceuqr2Otn3L/SMJHErHcRQ=;
	b=jJmpQnzCrQChtD82zHQXUEQLCWsCe53TuzX8S9WrFyZR7bvFMxUFsf/ubYXJ2dnP
	z1w5TC+FB9odLN8FMcYn/4s9DrFhB88sDxEkttMOXMmEV7wCNxAWQNF79/4s+oGnPto
	kLe16ORRNlUSYAdmmB6g0zrEIyOyWMF+VT1eSu9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3575c43b-9f94957a-2809-417e-a839-592943b95bba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e506804b37fa0e3264343989cc5a893ea67eda695f8c41b14d41e0d0dce4432a
Date: Sat, 26 Feb 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645869384
