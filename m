Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDD27EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658882452;
	h=To:Subject:From:Message-Id:Date;
	bh=xpW7VRujjDBrVfHf+qmBVw2Mv2978OZIq4+Ft1IlLfQ=;
	b=a9yCoTyfTUB4ZjiBLjfU9PtcHHBJaFXIQqemqGKnYmksyqZXdwnr+cRVXLlaa29f
	f31gFyfpXyjt9wdVJk5JHuJ6HaFxjm2pcnhzXRZpWvnpBbIRKPvYZFKOzWd9au+xdzC
	NavTq2h89ijNeCBO+dc6gd+It7LqlCUP/KeLzLXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658882452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xpW7VRujjDBrVfHf+qmBVw2Mv2978OZIq4+Ft1IlLfQ=;
	b=XeEWPaPKloLzg4bGg112K3L1+qGDX0Hz3ROvG7oO5K2xdsEBRrtZ/V8tYHf2vwwk
	t7L6s6SGQ++fHpOMf8gWoUtomTs1ZtVR64vbhPAHBN7d5jmhsHBiPHh1myrHo3IDRPs
	Tx90nJRWXnnCuSliweTbJto2prhxZeddnJZaCXDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d196c42-9e590799-bd6e-4692-847c-c6bd1c8130a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c045a435765f9bea3e860ab3f5c85341f76d6b97401ddba17cd4c64fa1b9c03e
Date: Wed, 27 Jul 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658882452
