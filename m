Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0CB62F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645183884;
	h=To:Subject:From:Message-Id:Date;
	bh=xDzok6QYcfY2fDVlqw2wB5TXMAiCwWtwukOHzia6kJo=;
	b=JU3M0yyIBzaA7Wdqhf2fAI7dRKv3xaoCtq045v7KDCZ4xNAfVps9y2MMQ1pKU2Nc
	s/q3LyUfDplVb3eRuWUPAsrthQTPMYeePZH8eSqs/GFD6/KwS5E9FeS1vCzgqgcZeCX
	jIowmpExKqDe4D0f4+kwzi3UtNRKbcMmTKYCKrDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645183884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xDzok6QYcfY2fDVlqw2wB5TXMAiCwWtwukOHzia6kJo=;
	b=dC9rEhKBxXPcK3nNHK+WU8ewhCC2c7vuuoRjIh45SLyRlUrCfMH7jJ0Fy+NmPZrT
	QJVvT/1LXb9Ruq3k6YlD8JtxnyLJ0j/g7aP0WUmDebNc+enCB8XH89vXkE/DBMY/Cn7
	9mJIZM3zsxuMqyI014uipDGIgWnSYBFcPIvINNok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c99ddd3-068f52b6-6602-461f-8d03-1cdf149b4b6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1dafd7f62acaedb4e0949b34e71427b5eed380a9967c36f82e02aa5da9485dd
Date: Fri, 18 Feb 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645183884
