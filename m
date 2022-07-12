Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41C92FB2
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657630012;
	h=To:Subject:From:Message-Id:Date;
	bh=SVRxH4zNobN67pbzsq6ZKmJUBdhjKhldTbE1jaRN8mw=;
	b=TPxewlgKbcz7eyqVRyjhHL+SJLVBpVHZYZZuau0qvAw9SaPiwIn73HL1lacQEpZq
	slwHZCHUYC4jWgfszUMtw6QLCHRjjx1BkRlmE5O1ErbP1wAqd3UvHJF6udsv/Ngbd7L
	SP2UoLkbgGgbY84mZC3CVnibqx2V0PhRP+oSS4mA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657630012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SVRxH4zNobN67pbzsq6ZKmJUBdhjKhldTbE1jaRN8mw=;
	b=D7mfTw9JM6T6JE/bDoW3W/cyznc5pvlKvkDrYwPvwBhGAUqjWxT5Mo7z2IR2IGXI
	a42G/Yow9Q11Y6tA9pQPw76roXKj/HLC+7ZIEisnACK2Fq5Gptu/Qqs7yJU/IkyYYub
	6Ad3M1xlPk+aa8IHvKf1jvPXBk0kBeFPBeq0rnOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f272b355-d235d946-d8b3-43c7-9cdc-e271219ca756-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f066ba7767110b07849940a8b73d6beb3cd31a0e3ca4fd779ab463e1eb6c8d63
Date: Tue, 12 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657630012
