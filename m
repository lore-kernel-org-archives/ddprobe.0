Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4713B17C9
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 01:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651628458;
	h=To:Subject:From:Message-Id:Date;
	bh=s8uIVas+Ypzebt133uL0L7J5NxlDpS2kwMpZWnMyMnc=;
	b=AphPHw7evnIZcNT7YA1H4p2yyWJ0b52M0Dtr82k8j/hh3cxrmHppLtaRlX0qZCrM
	+rmZdrL3ADnwcY6ONpb5W0cxvRmmNoWMByoJSvpesiF1H4XwTkkyIq+A4urqaCEHWmj
	TPm8GcYMbKNBIIhRKiz1gZSi7iMVMkolCfR7Qxbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651628458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s8uIVas+Ypzebt133uL0L7J5NxlDpS2kwMpZWnMyMnc=;
	b=T82x5nU+/ze4TWQcj04KUXPHPeDeJxlD3WUqzERmseebbQS7rjSJoz3kKkKb/mXd
	oLesX4XQMcj0Kf3xKNpU+oO3oVflc6gNfpkPzMn0jbem2XNoOkoxSg5gAZP5xe5vqdP
	4ybtmdB2/t68wQ94Y+i33Ou5v48fAB7BPU9zZw3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808cba410d-3478da11-fe8e-4770-923b-ba93e0441e77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33ef3f208495b8171139af05f2e5ca678a8ea6d02802fa6f314f04a020ab40d1
Date: Wed, 4 May 2022 01:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651628458
