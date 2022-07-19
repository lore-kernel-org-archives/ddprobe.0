Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24EA53A7
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658270812;
	h=To:Subject:From:Message-Id:Date;
	bh=oJlK5YSOabkWoosDVQSDWOYEm6WCfNGXwkLoFJQqbiU=;
	b=Lln0pjpNkGLqmxqGNpGDltsljDIqateTPcx9E4oal2UZzGv1dzlmOxsdTldX6N5z
	8Wjmffv1xAAWMXAi/blaOfaOb9a2/+vLYqNqAEQKOvgbI3qBa8YKLdnc7BuyBzprzR4
	M9QFbsgZIdXb2y5H1z4HBBfsKWNx0dXp+MTL8Qq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658270812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJlK5YSOabkWoosDVQSDWOYEm6WCfNGXwkLoFJQqbiU=;
	b=DUTH5li8AlWMFgL7wLtRlXps+zt9/Ex6w1BZc/WEGZH7MEOVkijXgTFxPj4gcI0h
	lsEU6xLVh5jeAB8Wtxyy4ILAF3S1xMqK61a0RvSAoHiKVkL3xy6OExGUHkUuqK/tZg+
	JjxiFEUCzL4oG44MQX+k0TtWhqyk+eOyMCnAqqy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018218a48852-f1f58d38-1348-4d28-8da6-6d58b892b88e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5b3858d45cb4dadda12c28054f6e611157d7c462fe32ba4b595ec4e15878467
Date: Tue, 19 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658270812
