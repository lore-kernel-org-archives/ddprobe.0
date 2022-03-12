Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7F6361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647096085;
	h=To:Subject:From:Message-Id:Date;
	bh=E2nMihKiVhl/dWfAhRAnfFjGoD/TEUWHyi2xlWhDdes=;
	b=XAZzwb6XYv9F3S7fAYgy9xmXnO594powLccljTDnULebflXvjT5dLz+xOoL92dIW
	aDuNLRX9KP2tTq/ZDiPtPN6lVXKGa0pyz/05mgMUKkGTRYOs+294zaUQe0W2lElWaa1
	O87gBmgaIppZa2KxmH72zrBMYxKnacdCGpmSQxq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647096085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E2nMihKiVhl/dWfAhRAnfFjGoD/TEUWHyi2xlWhDdes=;
	b=EEMfCcBcBzpxvaAqKf6FlBzPK7tm88unYklpciyqVx8irYK9DWq0bpYUAuZ3KtcQ
	bRmj7prmYz6NmJBCiHnkYZovwUGgxXrtdC2qi3Bu8f5yCvVBqzTzKqiq29Y3ExBqDJ/
	l+DSD31pa74jFudjjemLNwz6DudMqNhYc6AwsTdA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e93b8f1-5ff3ce08-248f-4488-ad23-6e781634b601-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98969027b2fbbb548e9f10c8d54429281514999d054c6baabedbbcda61fd09d0
Date: Sat, 12 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647096084
