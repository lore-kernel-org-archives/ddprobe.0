Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652541389
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 19:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649619658;
	h=To:Subject:From:Message-Id:Date;
	bh=x59zit15kWes8wlkrGGVfdmKaO8UXj1dIdsGEkhHiNM=;
	b=lYj8XnXxK5jKCFafdeNqxzHGJFenYTN+zIgY2JMPs1FbpYj3iJw0yf2utmPUyiJv
	iN6j37dAPzc9HchUVNW9uDpMXPJFpwUeMP1T5hhVkDZVqBP7Ye7fZyE6oTkJk9BiUY4
	nIypt7hiJILhksKBn3BIUxRDD4i1IUL6urnMOds8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649619658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x59zit15kWes8wlkrGGVfdmKaO8UXj1dIdsGEkhHiNM=;
	b=DE65a35NlCzsDqm0eFyH0FCxxLGZjD9zQKEm54iQL5iwSvCaoC6A0pCAsR3LKZ4J
	M/pL1Wp34nVeDCAv68m+YTpqax3taPIb1E0tBLvp6+o3TVUHK40zW93LfIzSA0eqawq
	lGvmr/tCbA4N1fiEDKMDHYW5OVKLpWrNt6FhsZ1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018014fe65e2-b2b5e49d-3d91-41bc-b39c-57cb44047dd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6996d2c68b174231216c1b22f75b1b9e7442f203a55550c75738dcacb5a8442e
Date: Sun, 10 Apr 2022 19:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649619658
