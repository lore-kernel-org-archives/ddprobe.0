Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5032912
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647380185;
	h=To:Subject:From:Message-Id:Date;
	bh=vEEZyOBrkGSYmrDQRmzHZcnf7X7VuQNT1BvB0EAwemA=;
	b=hogwqTGpqcr1U5mF8JMQ2r6ti1Si2ex29aDgWy4tUQrIR5mt9OwrFnLPG/9Nezn8
	OrSpnBBkl9bErSAQpULmvSGCbRmWI/NGnMvwFUMuTtYHvP3P8xMuTJNOhp8cdJPBEHR
	fqCodUh+aVUzrX0dSk9hiwGegjGnl81X5MOqCe7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647380185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vEEZyOBrkGSYmrDQRmzHZcnf7X7VuQNT1BvB0EAwemA=;
	b=MQIh8SUZ4gGdFGRnI5eR+ueXlgeBPA43fT4ml1Dh8n6RTDnh04pdMFty/cmbBbUM
	AXWsdZsTmYpfJZHvxZMGpq/ursy4ugHl+JrdECUxogdhjnt0YcRAFF3B+Lx3KJirGpv
	l5c/7xi5diMdn/yrH7uI2w0pUH5HLkTVhskE1PJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f82bebb-95fd1f09-3e33-436c-8468-fa2f0a582373-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af9e6dea1d31312efee5f14cd46862363356ed18e1f46644b70b299ab2e48bc0
Date: Tue, 15 Mar 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647380184
