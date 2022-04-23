Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0348117C2
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 10:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650709378;
	h=To:Subject:From:Message-Id:Date;
	bh=bOkFX7zd1k3z0LPdv2CQKF1BNLBRoahTMCE0tfW9mRk=;
	b=aGYHrG9fUmIRoIfWtLLwIS2TAduGgvrrUn5iwx6xjdFqVqFr71hCZ8v5APwBTziX
	nzffBYpPii+MZz5XKwF0pCQNADnP1gegTRy+/cUN4VkOeINsHtWadYrdTdMXt2nVFYy
	ZpJcbV8JnAiS1wm/OD0cI1Qv4U0o2T+UDivqwWgk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650709378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bOkFX7zd1k3z0LPdv2CQKF1BNLBRoahTMCE0tfW9mRk=;
	b=QCl018rKdYaUDChD95VkrRIAWTV5FJRWcPctp+Pw1P5jW15kiUMcR92s2zTUJqjn
	ztn+atMowsLdTcRHvb52aTUjMQjzV3ZcaNrKk+XgoMjoqsUQy/oxi8Yi4EZv+n7pxp/
	yJD1+U7LH04129cLmflD3EIfNvOGilQwB7+OU2UM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018055f2352e-2fe45a2f-e3ab-4f32-846d-0061aa18bb0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64ada8c4224117d857eac95521f20c50094630aadeb16a28591ce5d992e37f43
Date: Sat, 23 Apr 2022 10:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650709378
