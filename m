Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083297C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 04:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656218212;
	h=To:Subject:From:Message-Id:Date;
	bh=FV/BxpzSe6toqJcz3f69pjaIkJwPwwkNFGcq94aq+zs=;
	b=UGqXzjelW27y15Pij/bM/gdJYgKmQfsvr1Z/VsfW+7fu637ZZQGbZXQvtHcmDrtv
	BDKb6RqSSFWaQiGOGHY4bFYFdDdMoP8xhJMsgeVJsyAlC/NMQ4iaj2Yt31xzIHn5Gl0
	SawaXhI93dIcGTDapWEjBua4xulNRnEIJ2V/aiE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656218212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FV/BxpzSe6toqJcz3f69pjaIkJwPwwkNFGcq94aq+zs=;
	b=WchK+l5s/OzxHrDSXNxGd6b0rgQCGute0wrGM4ouPMGleZLWqqg32E4y21fIU+Sk
	C5Y+JtFSWaMz8P0XIQAsjk8LkdUNd7/KPA+LcczO6nqezvSML/RGbBb/FwHNMl6sHNy
	h/gK8xZOncDQUAuxu9XfG6FMi/lNPdDP3HSfCq5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e4c57b0-d84c8069-ede8-4648-b735-7917cd58163a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2dc7f513271ab47e25ba5be13a350c0dd91aa7e742801f26ea338b802a39d1f
Date: Sun, 26 Jun 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656218212
