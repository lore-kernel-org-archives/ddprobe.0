Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167075107
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 19:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646855485;
	h=To:Subject:From:Message-Id:Date;
	bh=p/Re8aARXWgWSCkNTFJRU1cKAeC50/qz8wOPGtgR+fk=;
	b=OTljyxV1EffGT/31bavBqj5VkUODqAWPF+vYIWInODzUFdRrJVC2U6WrFBVdmI/8
	13QU6jJ3ulVaUap6YVIFBPoUaNG3zfdSactKwXBgInJmnZtfj5+bjv6lCBerzTrnAgQ
	nyG1MA3qi0eXdtlasQAaMkioItYiMf4zeqkH1+60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646855485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p/Re8aARXWgWSCkNTFJRU1cKAeC50/qz8wOPGtgR+fk=;
	b=FiLRSxPwMLBeLe8Ss11V36WFccez5wwwSNHJ5CQWrlAMaohzkA+R9huvEajBJZND
	wf0UPsOg89yyIuh6K5EtowAqU5ZIfaZp6MyP39Iun4FI6N8mbTSkjAimDByzHZ/9irU
	Dykp8MzKSFQ6gJOmq9rHfPNx7RUjLVIKsFBswNxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f703c7575-46b2d252-de7d-4fa3-aada-53c17ff379ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72bfbb59bf0c8478879de851f6d7695eb6c2c7fd63bef7286e1eb37ee2823020
Date: Wed, 9 Mar 2022 19:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646855484
