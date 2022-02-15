Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2331388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644926784;
	h=To:Subject:From:Message-Id:Date;
	bh=hER5UjZ1YnypT1pEhtYgqqu25nXmgDxg46O+ZyV2sa4=;
	b=WyKLMpDqh1cV5Td8A3QDwrY+844ofLxHZCFAmRzHjn4qKTxN1JIu1PpksWjSmEFN
	uqXT/tjlUB4arP9OOhI8axpt1RPT1nBJvThfoP0tV4Ep9kKKCEofvfPFS06g3iD+khD
	D6WkdEdnNycqRb5Pyzja3cazgZ7+1hJrKEpWBNZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644926784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hER5UjZ1YnypT1pEhtYgqqu25nXmgDxg46O+ZyV2sa4=;
	b=SPjppmO3FYwXWG0wsB51cpsRoWX2M+m/iXDY209oHTIgFuT217vk3G887/a7+LuN
	CpeIhhx0IJTPtHsEneELu8xoxHi1yCo8S4uVC5bUhF8WBwGhijupKkdXPb/qR37HLuY
	SL6mZVk2xOwVfGZdPXlAcB+LCKmPqgrnWOGTWHIQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd46d4d8-85f135cd-d2dc-407c-8abb-cf5203e0ccf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02fc1e5f31fd77baf83c3a109256431f89ba55df0084e8ade44c4dae3509f0d8
Date: Tue, 15 Feb 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644926784
