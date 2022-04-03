Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3988C7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 02:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648954198;
	h=To:Subject:From:Message-Id:Date;
	bh=ZC2R0rHEMDab43/1CMFr6Rq4zyzQsfNpFFhKdzYKg8c=;
	b=JpzJGWYJKl7YokRHwuYZ0i9myiLRWRmFdTgBhWxvPbtUMJWMMfyxdBeJ3fOr+cRx
	ADvVhZ30JlW2P//08s2ndnRnf6l198FTN4LZT7hCjOjiqqsRHhBPPoLCGKNoc9mvfrj
	yyYlBWmL7FRstuvHV2yrSsF9cDG5V9z3BNeqaxeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648954198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZC2R0rHEMDab43/1CMFr6Rq4zyzQsfNpFFhKdzYKg8c=;
	b=LE/VwKfR6wCcfNBlwx3riZu6UetkV1gqukOCelzOjTYja9DHF44b3ANmk+IthjJm
	+D+z604qL7YUdrLarZMmH5dz8rrL2eK2e7wac3qL8JWLyQDEHCsIw8BhfFNz3BCunpL
	phBMn6Yix/d74SUGOsi8sbsg8SlaakRlivnSX9gM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed544909-d0444520-f424-458a-aab4-bbffd7e7c939-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75e6b7139ad6c1fe0d3e1c3e4f869f17e88458bd01592da972a2d87c04ba2c1b
Date: Sun, 3 Apr 2022 02:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648954198
