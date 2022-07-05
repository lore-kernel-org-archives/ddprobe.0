Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFC07C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657033612;
	h=To:Subject:From:Message-Id:Date;
	bh=1JnV9MR/4lv0wHtcEdQb5ZzUjJpb6RY65uaq5C/9SPo=;
	b=bjFM624GmxdOwjn9mQYYRoiX+AEn+lnu9K7SXrtdft7offDNmHYyO40GQUfeGlIu
	D4he8EIhFZT+6LyZjdhZ8KyG7Po+UPxGJkaQ/DUJUOoLmtzxHloNz/OT0IGhfb7Nc2n
	/DFtXh/ib1RrwQSOIPqRcz2OxLTrBp2Dt7XQG3uY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657033612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1JnV9MR/4lv0wHtcEdQb5ZzUjJpb6RY65uaq5C/9SPo=;
	b=QOBk8P1kb/Y/F4/IVTJ8Yb5U9R1mq7HdTXy92K9u4nOJDwP/as3m65VHRBKI5AQA
	QYwCXx2esJ9xLFliC/l6gWL7wwauip7AnI9XxSW1nYl7+mG7lIWTGcIbwECfmIDt80R
	ana72y1WxWgQkQlxcondoQYNE1kOqJJIQ01svQOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cee65c69-088b3458-74c5-460a-bf99-99b6757d05a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a05d0ea4769324dedb819675d349b98ccc34efb3f902883665b90a461f2f1e46
Date: Tue, 5 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657033612
