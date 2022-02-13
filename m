Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7889E7D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 11:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644750046;
	h=To:Subject:From:Message-Id:Date;
	bh=9KD7h/n6sSnaII/D7NAmvyULj3e2li7RFmAoOCjm500=;
	b=S7fEUpXsUV4Umq/YYX3SGO/v9agnou/XV53vo5eyI68DSgoBhZzvQQpgPxJvnojh
	/8pRlv8CgtmirSOmZdRC6PxzH7be4WpLXqYEJtOk2WNyHskTz+fDAtzu+Z4q1JtLihz
	cSmxmdLlD9qoDFyAh0Pp9VpC5CypcoVgpJ1mutag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644750046;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9KD7h/n6sSnaII/D7NAmvyULj3e2li7RFmAoOCjm500=;
	b=UQTNgQN+3WkJbLL6kyCgPAygmEnX61H1mMtV1eS/s6s4hy+OiBxGefXnqIrMFD/1
	1OtXivUh6D2ZUY/ka4J9+pS13d+rOsW6DHOv6N+qmBbMGc9gbqy7NUwlpuIqKO+jQhr
	JNCYGI3f0Du44JwJgsuhRyd2u8dkJwnkspsghS9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef2be054c-0a390d37-45d2-41e2-bac0-fb1a0e23aeca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 887e985d237df25493be82e93f74932bea310dbf2a9ac86373715c76e1915399
Date: Sun, 13 Feb 2022 11:00:46 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644750046
