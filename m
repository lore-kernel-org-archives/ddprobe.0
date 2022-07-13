Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FBA4681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657725413;
	h=To:Subject:From:Message-Id:Date;
	bh=wLykLe2C+NSDjFvxBnpwR/Q2g4FWOO6OkJ4nAvZMOIE=;
	b=kNaaIoqQTzLe/nbOoOhjXd2pgNprE8fKCzWBkuonrbL1jk7XFxl1nA4XOc5DOf1X
	nUZXTUesYDsIUYYO0vD64TVklv4B9BGPQywhjCJaSBqG2iOH8/b+WC7ECnZmAQ+ItQi
	3VidXFAhDtaU0enmwwN80NrCh8OHQxl6AaNkXMDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657725413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wLykLe2C+NSDjFvxBnpwR/Q2g4FWOO6OkJ4nAvZMOIE=;
	b=Iq8gMMrIGuJY9n409O9O1N0hWGjSgu9FqfOCmaPB2CTjJxJdgzeEEZe9nCvJ0zv+
	J8XTe8JrbVss8gl9yGRjHhFGuvqOKZY71WJgIByFsX1qQzONX8MQv+0LvXA199DC0+Q
	72L+7OcuM+hn+pda0vCy9M5m6KbVEveyLiEli5Ao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f82263d7-6819f7e8-4b4b-49e7-a5eb-c5a5c16a4d5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7664b8838ff66ab9439b5d6b75ee26154a2c8ad066cd7024050fb3e8b30ca490
Date: Wed, 13 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657725412
