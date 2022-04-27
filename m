Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68612A50
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 16:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651078198;
	h=To:Subject:From:Message-Id:Date;
	bh=mHBJpOnsEF0P4Y0nLTzz1HR90pGS2NZq8PWKQuCcrhs=;
	b=QrpOHe4cyEwExWjMC2aogcu54NyJ/4wtXE6IgN8wUtleAVlo3ZqeUzlTp+Ho+NS0
	saUyjuxUHpwdlZbaeztdnk/1TFjoPEmPa2jPTAhPJdQ3rUMCdrE75Z+H7gwNrWAaQxo
	NFub+LLJUSdABLa9DqoSPzaBoKAgJ1AeRbyNh318=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651078198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mHBJpOnsEF0P4Y0nLTzz1HR90pGS2NZq8PWKQuCcrhs=;
	b=OQoRzYUw3Xyra95C6WqrdwP0PvuWC6qA8PAANyJXwEE8qFG2peaqGw3GIV5j6cyQ
	g91A8s/l2LpSfkBVMbYP1lHSK7tH6qCTB54QBTiZKsEDOa7wwkxlUSp/JnLEiHfQ2wQ
	AI0JRedk9aW0KV1xwcnXUlhyYYPTUuFbyk0DRrQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806bedf452-bfaf9979-de46-462d-ad07-c936e339c60b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f33005f0d764c6971cfeb39fc2b2f39c6dc35ff505cd9202cd9a06d478a76103
Date: Wed, 27 Apr 2022 16:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651078198
