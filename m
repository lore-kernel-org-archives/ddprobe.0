Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8517364
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 09:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644742832;
	h=To:Subject:From:Message-Id:Date;
	bh=jrBl998FD0Vw+qQL9ZBwiXwk9hbGqFDO2C9KEj7pJrM=;
	b=PevVsXLbKHbdy7mPjbjP48FLDdt4TNIPTT0DvnCzpLwKs20REqAeIHGk5VIGPFhR
	7hXJ8++7e17Vjk02izVnp9ws/t5YKHJeToy24Ev9VcYQ4Ov8cdJ87Hck8ghfdOE8kbU
	Coi/aXHQJn5A9qkoosj092SUTSc28n2uPSz6X9n4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644742832;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jrBl998FD0Vw+qQL9ZBwiXwk9hbGqFDO2C9KEj7pJrM=;
	b=Lo4YFzJXk+PWKR6XPpPzf8WCzOG+Eb+/8eXnns7/8U+xxy+Uvemt/lI6oIdLScsM
	3QATcTsiWafgvEsn3OruqAx5eHjqcZirZMdW/sI3Qj08WyE+BtRBtZLST046yweFtW0
	XjrrRdf2yGYQYLEGf/siA0EAuASR1s9m5L1RrwFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef24feeee-fa46d957-3545-4707-9a6b-84fb20bc2b08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ecac4a771fc95165d195ad226b50229bcfb6f97c8a7844113caaf5d7d2a9df8
Date: Sun, 13 Feb 2022 09:00:32 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644742831
