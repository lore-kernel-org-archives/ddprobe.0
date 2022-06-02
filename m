Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9B23D65
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 20:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654199999;
	h=To:Subject:From:Message-Id:Date;
	bh=xiuFxUA3W16wBBqUXk2caMscChUTpz9lbZXCINBSU7A=;
	b=lk78MGEV73x8dS6+F/iV1VlODVhppqkFMMFMn9R9HNAa3/PCliL7Sy6FormIELcX
	mvM++8UC/OmC4TAE5G1rMJEWmMJu4kxMvqcSv4rZEDs4HqFdSJTBhaPDQDP2o74cFjS
	sX0KllUmAHP2iQZbD7dgt8mvDd4Ydt9Pu/e86/6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654199999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xiuFxUA3W16wBBqUXk2caMscChUTpz9lbZXCINBSU7A=;
	b=DkMVTydrH3f2vAPj2MD8BMB+sFmxu58vcaIxM1hryMSbtVsYV+yfXxOA9At6gR3r
	jeazPruWaK2VR9K/ISXZ74p6BhUNhrv4O9yRveebuDzVm7j+KV3Y3DFbdvt5ZCyGUxJ
	mJXLdhRwAJaQdgDExUdx/cYMdI/N+fhtdxxDY6aI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812600db4d-1c9b8ac3-822d-4938-843d-11c22834beab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9734daa00c6462d9198bc6f782c8d8f6a088dd9ec49a1f65459541c8f53a5f0
Date: Thu, 2 Jun 2022 19:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654199999
