Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE0E17EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660900252;
	h=To:Subject:From:Message-Id:Date;
	bh=Y6IvjMW7vXYQ8pLdDN2VuFPH/LZfEmd5Yzu4BjT7gfM=;
	b=bMWs+TU7ssVwe4upodCHV9KiTkwlO3VKJy1dJHc5kkmsbyStJ8HHBsJfsW/dBmZ1
	2PGkAeQ82LDomigBNzJOpYJSTHHkEWPBNkn8XytGG7l/cvRJeTybV6DYzvfXb2NDFJO
	bEE62t6Td7A9530FRcTJcXNXR/MBJFw+fIssnRsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660900252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y6IvjMW7vXYQ8pLdDN2VuFPH/LZfEmd5Yzu4BjT7gfM=;
	b=gZYolcoz13KvMhGNTUKOym66hsfdc5OZvjB+uzw8TFl6FM0ksMHbhwkvnKbQEmz8
	0k9Ikw9OHaQCxa9IlfbiW/ua8V3guSTy8Is553gKJ/BvW4ogWfuk5nQtR7nvUfz+q26
	6PGHHauDm/hZN8EWeYAr7EL0W9Wijz7o9L/T6uiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b55e9bac-7bc8be81-49e6-48ac-a334-1a5d42414f25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 258d7d74bcb525a389104808b674d4253507888a14b855a221bae98e7d5aac73
Date: Fri, 19 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660900252
