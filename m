Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6607E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 04:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648096318;
	h=To:Subject:From:Message-Id:Date;
	bh=62/q+rwwfdvVSRp7sC8NPMYfC2eCzpQ4cc0A7RSwYn4=;
	b=Ph/+Eb9mmmNUgqMrPmRXLEC+PM1XESEJlYSQmW+ulglYnV6HqhXOt3KlsZ52QVOm
	LiMC2nqQgnaw0Cv74Euh7HRXXF9sEn/dvvV2I8JwX5h6cz9wm45COD/AHCX1Wnz5P+6
	KkueaxLRImPE9ZkzxDuZ/mfDuZ0LFf97UKofUZbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648096318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=62/q+rwwfdvVSRp7sC8NPMYfC2eCzpQ4cc0A7RSwYn4=;
	b=DLRDBfY/Jn426HASQcogmleb1QP24NxpoONB4Go8o3RK06EzHpMyUr7TR4kn10ht
	pEsGF2uUkLG6mP7FJ6NY1T6FLxQnn376Z3loWSjZOFfqlZbKWnEGwf+76BYuKN6bZCi
	FbYaQ24XNMrU+fnBG5N20U52wM7MxZLROGfHhzbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba321327-436b9056-8d8e-438a-9096-9f9cff26a555-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da4109c7d412c10a71bdb3c247d0158fc588ee344eb2bd3f996d020275cf703f
Date: Thu, 24 Mar 2022 04:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648096318
