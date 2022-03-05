Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF577A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646501784;
	h=To:Subject:From:Message-Id:Date;
	bh=h55kbpyDIrv+o2MRD2jI5QdM7LQgHW9OhzB9sBoE7pM=;
	b=dfBGWtrygDv+mcdQG37Qs5a/njjlB83pE19u5N1aJHpBjiVeyNiOY4oYoX4oUPLV
	GI1RbLHlmDpKUaerbW21DBOrBX2MoSqvUfJlaqvZvMmT0vb6y4Y1rlRbkn75WetlwnB
	Y3fgJj+TiqwXjwtd6taiH7otemMXRn0MfIwUbjUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646501784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h55kbpyDIrv+o2MRD2jI5QdM7LQgHW9OhzB9sBoE7pM=;
	b=lNR2o1fPaaS26xGcNxvo8ufOZtuvNX3D1HRTWf15BL6enEm+TVkZytTa76FFIfbS
	qD+Apkic9Ucx8qhXvA7YRvG/+Im1YHxxBPiy/2zXK8JzS21lXhrtsNnpe1rfyXixJEz
	hPe5BrsKwDikNj8xsvC7ptX7dTteCAK9FThuacC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b276ccb-a80ce7a8-efae-465d-98c4-dac05c154d9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd1c7b81f6890bf5ce65a2ac52324957eea95b6e95bbdfa38c5ad3651e4c11d0
Date: Sat, 5 Mar 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646501784
