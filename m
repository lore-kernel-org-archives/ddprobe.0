Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB0320E0
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 02:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653963899;
	h=To:Subject:From:Message-Id:Date;
	bh=lfZ3GSAf0RlMB/WzOA/3uzoe0jOPQCt3URuaT+D8C2E=;
	b=HzCQ+m3lNqu+SPy6uv337vJLAHnIbVMWappzPjhcC6UtxSqyQYAZCOLBt5yZgD/G
	yFHXOYLOOxKZ1/SV5rgMBzQ8e/CX3ZmNSdqgVQuQPKsIkRyPttjFq068JaaSiQ1Mnsr
	LvvO2InoqnN+2svrrLXpgDBb7LseBP3ldhmdZYxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653963899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lfZ3GSAf0RlMB/WzOA/3uzoe0jOPQCt3URuaT+D8C2E=;
	b=eTOZA/fiYjubsBnvBKtKsAR1mvKtMhN5Y6KImKt/3W3kpBmqgWQoMvvJ0//6HkLc
	mwb6dN4sKyELZ8945J0c4x780ppJhHqCYDVyF6Dnqjju/g7mWPgOJn96DhNOLzvyZHz
	SyZFcOESB7ApQQdKp+kK6yLSpTTrZkp+s2z+OCTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018117ee41b6-d09790b9-3daa-4bd3-8cdd-054ecde4bd4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 592308dde70da9e05f6af0fec03744f73c0ae1db378dafbbce5dddc146333b58
Date: Tue, 31 May 2022 02:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653963899
