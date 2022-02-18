Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6064A81
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645193485;
	h=To:Subject:From:Message-Id:Date;
	bh=MSsbgpIGT8610tkUPA79A0eW6RvaVQkKPh4ztbul4cI=;
	b=DexvtK/13kmd9E0M+RN3cQz+jSY76ixUTxmUTM727OAru5H2s7Nwt4qcWY2QgFrj
	BWaT/bnVq1M+rulo/ZQIDkf6bWMB0SIxH8l6Iypol373xPNS66RdqGq6xZPSLRk9Guk
	s+ULiVDQJY/eNuI4n1VWoGlmV7PkPbL/Zh2JdFvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645193485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MSsbgpIGT8610tkUPA79A0eW6RvaVQkKPh4ztbul4cI=;
	b=FHY2RmW/M3vfH7PsonvrUUFJOySLiZXmljuCbtFMWumMb64N0EPg9g0yVuDylYa3
	ePu8fqaDl9X7pmcVTMfm+vQzUzZ7n3GzulWGd+6jVFF9cZLVEW/8gMGQkTiWmdJS/IQ
	mxN1SqveyocPYx6KGR6xiwqf0EErmBOZJek7fTG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d2c5a17-82c66878-ebe3-4f7f-a8de-bf1cec091fc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d097afd6842e595c34df638a95bcdab171fada839354a904f91949197fcd31b
Date: Fri, 18 Feb 2022 14:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645193484
