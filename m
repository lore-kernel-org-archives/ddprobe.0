Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FD97E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647073584;
	h=To:Subject:From:Message-Id:Date;
	bh=+w1nsaoScgb6WcNd6AI0ZKX8DR4Z/Tx+NJ+02ADckpM=;
	b=Ba958AHZN2CFu1e7l2Q9AvRj0Bmk2a+IvFix9uc6P8KibN6Xz27ygTsusmrqLzTO
	TKgz/Xi7yUwIrfKoCzC7O7vlvi+F4f/Y9OXL260/hALrtTO9iZTvWVOwTrhbSuhi3jQ
	0l3ayN5Grdx70lrToR44egSwR/a7HAixT/rxQoIc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647073584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+w1nsaoScgb6WcNd6AI0ZKX8DR4Z/Tx+NJ+02ADckpM=;
	b=PytshbFkqtRqA+Rebe94uJf7lxLWCcud49SzjOE8G9hlFFb8GcOGN9BUfl8HdkyQ
	/FibJR8EZDbOhVkdnfooFV1b4lozq5IZjWwAiSYHhuK6gQsi9yyhlM6koiOYF44YaQT
	6kYGeOdcmNjR4JZy0KYmhjLk/sQKttkQVqPp3G0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d3c6689-a9ce4ad3-7a53-4b82-b75c-62d686cd8a2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6f190db665b82355cd1517f9e56c9c8907ee26072629f898297679f501cdf6b
Date: Sat, 12 Mar 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647073584
