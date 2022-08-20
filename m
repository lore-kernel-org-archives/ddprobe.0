Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CB117C2
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660957252;
	h=To:Subject:From:Message-Id:Date;
	bh=BQIyEMp3OQ7xZqkp0bzshssYtiOOIvw6/CMASAV9jgY=;
	b=HgjJIFpxSrdiJa3EV0WU2Ihw7WEUHVJyTVHZdfcGNc9m6UFtKHRncXhOZWmw3lTe
	7mq/WRB89/MA6m61xeBHiWj3bRn1RWBHAof97BXhundytEV0LZU5DrCTUWV0m4AVocG
	XOrD+ijtl/JGSTbt8Dd+7c14w35X3WzkvGfRU2LA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660957252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BQIyEMp3OQ7xZqkp0bzshssYtiOOIvw6/CMASAV9jgY=;
	b=O02UeA9ncPhddFFYEC5gWT1ixL1in+LkXJzPGv+4BTVWJGq13EGvyzsE7eigjY7C
	GqdqNRd/+0e0ckqV9WY3pBfLV3tOniiCBWRosj0Jpdvb2yeFl2xt2C6IzkII4Z7thjb
	H3hPfd6qsVjtrb3AEduWOXRZQMdeh5cozD6XPqz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8c45bb5-0aa70d87-a1bb-49bf-b0b9-72e607cd8362-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 459e50091342d87731e0b2295f856cd637fd930a6085727af78139b7c9322348
Date: Sat, 20 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660957252
