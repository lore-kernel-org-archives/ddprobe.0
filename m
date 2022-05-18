Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A87F1852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 08:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652861819;
	h=To:Subject:From:Message-Id:Date;
	bh=s1GbAJrao4edl7kIIFn226NiW98Z5EVeRfrhjmRBiKY=;
	b=SCxcmtODhVOXHhJrQlNGLNMqj9P5YMgQcdsokHsYbRkF3REQgbN9M466ATdj3Jq7
	Iul5FOz7FVW9Ef0VBfV1/qV8np2kz4R2y4nKLt/1pp2X508NCETs27Fek9u0ubUxi9D
	EPnXmoFl/4+Ck3RkgwvI8jDv3OIO6iOFl4+cE7io=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652861819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s1GbAJrao4edl7kIIFn226NiW98Z5EVeRfrhjmRBiKY=;
	b=hYie5u1lXrJ/AMSiy8opUwRCuLyHOJEKanV5+E70yBN8lffyYL0kp7VL3ju0y/8j
	9uToeMPQcOlfQBiVdT4ZM1CncdxVRXDjMFZfuqnJm2QBNf7wBvIr9SojwRU3PLzoC7r
	ResnSZ8V47Mhfce5w1Gu0+oOk8+tydnj3PS6hCWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d63dd98c-0c6da220-29d4-4ecc-ad6e-ed89846ec9b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9bb69b839dc4eeb15f6826c27f89b22f578674f66d943f0e306265dcc099689
Date: Wed, 18 May 2022 08:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652861819
