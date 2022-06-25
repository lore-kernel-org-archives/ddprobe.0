Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059507C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656133012;
	h=To:Subject:From:Message-Id:Date;
	bh=uHbyd5VAQP7FERKRDyvQ3XxkRV1ywZxTcJdX7iHgdgc=;
	b=D2AnrBJ/BON4qq818SdrFtWkEGdUvlB2N3ZlqGvA/6JKNcXYVQHvlEvz/LO+widn
	pqEjU1VeEK/le2nsUJUIaZE7vKsPN0zQuUPahbuzi53oxpTOV2MGUnvNEfS0Ibcjb1S
	kwto96v1glNeP5xCht7ywZL64WXWCYgQYaMe/pc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656133012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uHbyd5VAQP7FERKRDyvQ3XxkRV1ywZxTcJdX7iHgdgc=;
	b=cihUdHBLYZe9OiAUHZ3nnU3oo8Z8zb/bIhsHglcu9BNB00QlKsPzClkVw8WuxjWH
	PRepyPRFj6CzWrRvy/raWDesTehYC4bmtb7ISlhjJpFXphmDLpOWsNlvOfhdFzhaHCw
	PjCz2Klf5Noqz9ejFMnVi9TXqjSDT/mLhQVzbN4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199384b97-3ed9cf24-aa97-4e34-9d19-d2a8f1680c4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd2af5df53db6746d920e80b859f69248e3be533cccc67b6c4aee46a34926913
Date: Sat, 25 Jun 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656133012
