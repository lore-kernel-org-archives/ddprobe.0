Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4C55124
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645256785;
	h=To:Subject:From:Message-Id:Date;
	bh=oKDo45QiWzYkroUgzD1gXGnmC3qTzyZF0QYo6fHIPq8=;
	b=C691/iViWMuNW7ez/Qm85EQ62+gcBQiyJHjh9xSlL5eXYNMM0rO1831DSxSB1uGZ
	tuB6MRyq+t1F4UxObge2tHQ1L3KXp+siY0kaUJA+pU4HS4yxDJclz+PJDXlXVMacUcD
	J4jZwP2Gtrsmj7FQdfkIJ6PvIhouzupAwJNQRyhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645256785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oKDo45QiWzYkroUgzD1gXGnmC3qTzyZF0QYo6fHIPq8=;
	b=d/OiGwDHKBOjZvcwQ0gDtSqPquZhvY3iywPIjkgaJIenOPYp6y7hKvEMb+vE2SlU
	ijjt0pWCcvlBJEMMbKLv5i80+XOvLNuMC4vIhHThrZ5EqFUhD6g+yF/BZxePYysAs/j
	6g9LmnhPd4/hS2Gme0vnGLpwtJer82C1zwaWeX0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10f23b96-ef6214c5-cddc-4bde-aab4-76329f1eaf65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ec744b02c3a5928279c6cc4b93d1c0ae1caa0c5d52af9e95189c12f95ea0f9a
Date: Sat, 19 Feb 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645256784
