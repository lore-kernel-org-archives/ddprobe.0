Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370C9368
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 00:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650155578;
	h=To:Subject:From:Message-Id:Date;
	bh=PgCH3/OG71DUMF3bcz4jfNSqMYob9briE0yaHddFpSo=;
	b=FUbQQekqJXpprID2siIjCoGujkXIGO/NjqjP4E9q75RnUCnLNGjeX93M3+Gpsxn+
	0ClDScWFuemHQkX0QL+uBRSbyE3y0LCh7HguOJ2bsdunNhijDs+y3c3P5y7ScAc9QlI
	/yZjeMrkykDWb46whHmvbfhBkm7AfvF/rhoSvBAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650155578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PgCH3/OG71DUMF3bcz4jfNSqMYob9briE0yaHddFpSo=;
	b=c+gH16H+7OvX7K4F/NdVFMGuuVqChwhEgSJlx/6weMsEBuJqbq7td7Vg41ckglMt
	FxXr+xyin7oVbhBc54Fzqc5hF7eXRWiZnva+dYsF2Hi8VnzGgqccbJtZYkAXPRLaf75
	lH+82ljYXgOCxP/FbiAMxE2amiVGqMNyF4FEuqgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018034efe397-6f6b933a-3a26-460c-8809-bf1ac9b4c302-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7b7a93c2c4843987c39cfc5e967842361305f73d01f9ea7fac4875beaf67f7f
Date: Sun, 17 Apr 2022 00:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650155578
