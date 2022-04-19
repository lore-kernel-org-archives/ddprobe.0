Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F751364
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 15:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650383878;
	h=To:Subject:From:Message-Id:Date;
	bh=IFNN31XiEJAxjky4BZkqEed0RvUilnMGsewQNrbgrYA=;
	b=FNHiee3pAocHlXXfJuhePtJUhVoj0e97TSn7NMYqAmM30B3ucPwhqyBHVpENqpZL
	l+AJlQi5ryfVrpk22gmn1iGrHccundY9HBHa59o41ZuWOWiuCymN+bPFgtO3zBXKGL9
	F3bjK7NUV1qCm6mFeYv8QBnuM6ORsXvR3+FNPdCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650383878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IFNN31XiEJAxjky4BZkqEed0RvUilnMGsewQNrbgrYA=;
	b=DwJaBJAOk9JjdSNBJcaObDxd7QtuHUyoboNB57MS30ecCtVgTBX6JVbaeUCNFTmv
	idX+Fghn83lE4j9ic1Ky5t02A2/dpfnh2l0bi7iyFHxI7zzyb/s0KHHUumfFxN4K6QZ
	MzRN5Ug12ID6gl4lcwrMcpXfRB+8IGqN9yVsmkC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180428b78f9-d79cb410-feed-41e0-9ea9-4083f1988a35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e13721b0607ea8698c0e1867cb968be2f7554ab7f3fc3a0f63bf28956b0be8f
Date: Tue, 19 Apr 2022 15:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650383878
