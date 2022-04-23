Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0487A3201
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 18:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650740038;
	h=To:Subject:From:Message-Id:Date;
	bh=T/6GmTa6xu/PTob0yXYh1HrDM6MP1y0Lk0KnGuMfqZI=;
	b=iuOLo+eq5vFrzd7Qah07Rr/ottouZUChynI8kPh2+vTTyZIsXqpIbXb+9xjRxf8e
	X0K8krV+a02K+pE9Wfhl6gm29XchpN2O+lP+OJZIoDaQ+MJ8lXXLjtTvUaAfkAtC3LE
	TbtflgikBl6ALt7ezLTRZXnYVealcTeebx7byhO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650740038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T/6GmTa6xu/PTob0yXYh1HrDM6MP1y0Lk0KnGuMfqZI=;
	b=WxXAF2DKHYlCQ/S80TlmO5T3WOzxzeXNc7KMd2XHIhvzqzNonwonvM36QAnwlJhG
	VaXjLFxol0kEYxdKrEN9B32X4G7yOENGuVathalCMWJRjtvmxwGoeqFSroR0P3D+a5F
	I9KGtDgmL7V4I87d4TBWQWGkVIJeixX5P1ODqTrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057c60a93-98b0178c-060e-4f28-9ced-dd3188484d54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42bf1ef7920b6e639662d6da39dfe9460b920ab34e66eaedd29e15e008adeb67
Date: Sat, 23 Apr 2022 18:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650740038
