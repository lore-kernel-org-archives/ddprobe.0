Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C152CA5
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656884212;
	h=To:Subject:From:Message-Id:Date;
	bh=p5Alrk57k9Ua/4rgQu0rj4aHg6lIZTnOra8ryvYWqAI=;
	b=cB6h6ypvV8t+wZMDDFEzJkJUhmmEFsVpM+++na5PvBJAeWa79JoPOy56OwUVpvrO
	WZIlRsRartQgJRKjO2PzrO+U4UuPzjMbjhXg47I+jLca6U/w7KCAp/2n8MERRo9JEzQ
	BRZ8VLtYDf8qcj3f9tjnCkv7gIimaQLrNnGsUmMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656884212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p5Alrk57k9Ua/4rgQu0rj4aHg6lIZTnOra8ryvYWqAI=;
	b=bk9ovU2jbBE9mg6XCaqu8cDjwq7SYFeUuIlR97h2zOrqUXWDfZ7xF/gzkucRWaqD
	eCZHn7QFvZiI/90v2tw7oCnQG9za/UyemH4GedEIo/OnAhin4MuethzCZfptOz+Wd7G
	PHpWPnP8MT2kV/leL9btNWJE79yzuBZ70Qh55OBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c5feb210-f599b83c-eeaf-4240-961c-089f3822c317-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d76b0f60c08cd3c33b30f7139a8e67fbcca4a60f5704f16a16b9e6fe28f150e
Date: Sun, 3 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656884212
