Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F987F
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 00:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651969559;
	h=To:Subject:From:Message-Id:Date;
	bh=mLaPU00iuRaQq6bTmqVkjZMz991gThGQBCby0GO8rD8=;
	b=Z7fvonpGFFEB5rdCdKR/mvnOSmbJ7gJbvsCVS9InKJ4WLZaU1BLIHDdCnl0ooGjj
	RQ41J3vngPWF3TL8Y2chwBQzO7vHFVyBwYpcD3cWxdztaFNMZMQDRP3RKo5SGMqAaTz
	RfvQu9pWFdEE2YqHKCyQg7jE/LwBN1JPBh8rlk+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651969559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mLaPU00iuRaQq6bTmqVkjZMz991gThGQBCby0GO8rD8=;
	b=SGnJfRi6Ze0w2Pe/jZkFnmyJgelT3ApuRc8paYeOtU0BmCDmpB2tZzxSHuJNrz5b
	zurNN7k7ahvKkahLCX8Uu9F2T041o7NYfFsyrVEJQEFJoYXjVd9ZcQjCPfUhpkYAuQJ
	Sf3aqgiXLLputUcOtimBEF7Dm7HDnrzxUpmU94RM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a10f0700-61b8649d-bd85-4c64-9946-e9313fac368b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e2561a16f7f966d44e29f67a06241caf538ea6c91d9edd68d7185de03245737
Date: Sun, 8 May 2022 00:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651969558
