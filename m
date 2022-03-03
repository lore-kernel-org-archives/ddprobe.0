Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979402F56
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646349684;
	h=To:Subject:From:Message-Id:Date;
	bh=HHeL1tF32lkdhizTYLFYyZ7DtlrzjcJGprqxB5Cisc0=;
	b=ZAvGThIEvUGNY8E1ynevK27WmQTqemxj7qHkeTz9KvTq5OzsGyiZfggEJUMZEPk6
	GwomQhWfkUpRwIQx7DdJ/NzLzYQwc4FswhTpU+MQaXyxBQMr7yC5oqRFePsXlwQGfpc
	ajEVckJ1Pp1gsc0yJF7LNrTUPnrpDDQly4/3lAJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646349684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HHeL1tF32lkdhizTYLFYyZ7DtlrzjcJGprqxB5Cisc0=;
	b=Y6ED2bifwNbnH9tGkYkW2QSjeSlFQy0q2n/wA5qfOw5UtYf3fYRsuAiRehCZ+T8y
	KICttCBN+x1+I10ypO0wNSGvj8qK4OUQVXMarTmwISMUsTwWlSYbcwjXqTJZKGETiKr
	sUPOIl4SzF8fAPwFHX4iZwFCVF9c36WKf11ZzpLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52169001-62ac2271-3c82-4f70-afa3-26adc10fcfc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c09157b18e631e05bae423c165bef12c1744d0e90b44b51f0353da2d0d8a0d0
Date: Thu, 3 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646349684
