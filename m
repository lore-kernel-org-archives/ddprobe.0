Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E15418F
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 02:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652322719;
	h=To:Subject:From:Message-Id:Date;
	bh=j814nRMt2u5J/P+EZlIqUrJbp4RJtycnm0LGKtSzmjM=;
	b=c9k10hGkzvoZtDtIVO7AAfzwDApuYGNMLK+ecXcwEtyNaTlMtd+G3YB5nu/yPUSO
	Nkg+cxb/UI9CRRzMMhhgd3rhvaK6NeG+yp7YZWSyZtOgUS8oDzJStsN5JVg8aO6Ca8f
	UvH9Lj6l9WdvYix0mscgnY7qL0srvIaf9ynbnUiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652322719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j814nRMt2u5J/P+EZlIqUrJbp4RJtycnm0LGKtSzmjM=;
	b=k3GtLvrWC1u2PW34gZt7JzxJ1IfLkpSLW/EByuyJ4kTcf5a0H//hTOrk94cgVjav
	kj1j5gZIdKt8PwX9SGtg7qXhDoIyfV6b+NWQ3IoTUWqqfKsEL1/Zg1IZ29BUX4y+ZaC
	jeh8xzTYhxBd0NseRWDNkbzzRWsf5od/d8GEEEVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b61bd688-aee43ead-fa54-43f7-ac88-6fd55d98a25a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4418e4156fb7569adf4dbdccf031d7d749daacb7e187fe11622172af5e288c18
Date: Thu, 12 May 2022 02:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652322719
