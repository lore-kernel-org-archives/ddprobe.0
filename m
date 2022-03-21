Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36C67B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 01:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647824784;
	h=To:Subject:From:Message-Id:Date;
	bh=6BV85VED7J+Dd49xUy5b9udnJda1RnZaq0JFaAUXoP8=;
	b=Swp1AVk4dZe4cP/x5BAKRXuLhnB3FNKDUhGdih6hf4gQvfZcKKFpilx4MSFQxcLC
	PoUwORCvqxyRQfSkaDbRLI5/gFC6H4ist6vR5V5pJRpyfEY/WjT3BsV/zUn3Tzfy2mb
	bObTW9+svA93tsW8BiYhxA98c90O30NKwL9WfWew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647824784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6BV85VED7J+Dd49xUy5b9udnJda1RnZaq0JFaAUXoP8=;
	b=iJS1Y4/yS8VqaXcQxjQLDjQndSEYCh8no8LXeqer9HX/+H7Tsre3o+t84Ycd8QM1
	WXI7B003io4N58emRUsgRJsXfrjgTaBtK4ymgPDx0Hgb92aqazdIl4EcFuDnWzFjLpZ
	4d2S8Nqvs2j1WZtmt7D7L0xFK+hquYxceqNAQOzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa02cdc5-9adec049-fc9d-4584-a059-d85f95700715-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b86f9cd614033fdc86cc02bf63e2d69489124fd4c4676e382ac5b692e03801ea
Date: Mon, 21 Mar 2022 01:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647824784
