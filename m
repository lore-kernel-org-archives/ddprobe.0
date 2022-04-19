Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106971374
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 18:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650392938;
	h=To:Subject:From:Message-Id:Date;
	bh=blabdNO7W/swNvgdA0ZbMD8vVwDu5M30QkoRBFZ5VTg=;
	b=WlfT9LVtU5yl5Q+iLI0RD0Ig6T4ZY7JGjqtRjjkoXGZEusmuuTqTlh4hh7UQd8vg
	JtMCmdY/K9KnCYir2cOjgQb6IeroyP2P6PqpNcu8e5RWR9eoSvU83LMg4siS9GByb9R
	gU7kELOmLgo79sC0VpA4uBWOdvbsTUEouk0/M1FE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650392938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=blabdNO7W/swNvgdA0ZbMD8vVwDu5M30QkoRBFZ5VTg=;
	b=P/h9x4PLpNESBwuJP4T2HZBZxLqDC6vfArYyWvv55FOVLcBxTATd5m/aPscHji4A
	EixR2XLrUuNFybsH/vBdHvlWq3k+33GY3Q/BYA2oMpRjY5Cu4i3vn/SVso9EBUU8TDi
	A2y89Fn5S1i6RX8ovDOJDzq4DlPrmjMI4FJF/RMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804315b75f-9dff5665-d553-412b-8bac-80e0f4f7da27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b8d30ab03ef60bb7f39ae3c77bdc453b46d38963b8680156f1f8850b26e3270
Date: Tue, 19 Apr 2022 18:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650392938
