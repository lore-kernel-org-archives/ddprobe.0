Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EFD4681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657646212;
	h=To:Subject:From:Message-Id:Date;
	bh=b7pKiIDILv+reII98wbxbrFErnhEcCm7aLUkf80Ww8Y=;
	b=W99F6daxpCs7jhT+JSC2Z1yfQXV/GxXvpTBL39ON9s8X7nfvi8QsHlmvOsQlfBDx
	cTO4XIyx9EZZSUVQEgWZNNEb4pNX7U+pU2al9/Mus6Zm+lo0CsX5XdJoehQz6gnNUFu
	IhMNpQCRMhC6huXHMEhi59/QHP9RugbytZTa8XZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657646212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b7pKiIDILv+reII98wbxbrFErnhEcCm7aLUkf80Ww8Y=;
	b=JMV8mlXHm2W62j5aqTgMWuq0s1W9NyIXXYpXtG/X5haMvB+wNqA+eHXKDrWMcCS/
	c/aQ/XOIu/v7MbPmhdP4JErHZ/ZlT2q1npCPTw3LRFuuuTZ9nLmDQV+xN/VkoUUcngQ
	3q2zIsVQYf2ege9jZ8XsgpLLipnYGS5WN2hXzMo4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f369e4ee-60e6bdc3-fe15-4ce2-9807-7c9a2717e533-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 832a3f229799b124fe4a794949c4a78444362e01863c012eed9ab30330f3ab84
Date: Tue, 12 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657646212
