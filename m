Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33F633E0
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 21:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651700218;
	h=To:Subject:From:Message-Id:Date;
	bh=8BjN54KiNTDT5qjNFKcMlCyOkl2f4BSTJDhmCqnVMbo=;
	b=RfYUz4ghwIhSokFUY4qY+qrmjOJJ8IqZx+J8cP9QlPJaq1+XOhM6sGM6mrS1IA0x
	H/uZiUjqpgL4dLq9otCSKWwyDqYAHl6Y/HsEgIM0moHUkjIiTRo7NPI9eyMmzge/2kU
	12S6wNx0uuOPlEmudRvr7pAIcTG7F5nQs0vN5umA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651700218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8BjN54KiNTDT5qjNFKcMlCyOkl2f4BSTJDhmCqnVMbo=;
	b=XTwTbZQYzVI/LYxW1z6BKt1Za5ZPtCdLzH075BUzWnIWSzYx0MAJdcCx0xnYjAnX
	+ZYOcvalOXAYvm6Ji/swF4oEkJTqRa6DQf/WfczMeQhWFpZOwfIf83bL1XjNebHmLx3
	u+BWGWL7+I896faIhrBBrP9KEp0Aj8EhxvkQx9Yw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018091013987-3eb044be-da89-466b-99de-b5b3cec870b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64695b3f8c7d5ea9e4d11bec4f7f3dc94159b9bf5559c034b85e58bcdf61f2c9
Date: Wed, 4 May 2022 21:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651700218
