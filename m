Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1386C7E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 11:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652008558;
	h=To:Subject:From:Message-Id:Date;
	bh=XvTQuNxdF75rN6MzfejHlOfAbWv/jz9+cnyRjx3CCXM=;
	b=mHYvbnqy9bYT23CtKuz/qbRb+u4P+Xv2+27YQU/XhIGPUM2ebfzwiTmg8j4yBO9B
	5c6XW6hqCAqNIh0x9M/Q8FCNOZCYNs+sqyerl84JfkG32q+X9GKF7GdvnjMMVdqFGFQ
	Qy4hq7Hsf9Ob9j02y9vsUw8Ro6Ct5WS8TKQihl3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652008558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XvTQuNxdF75rN6MzfejHlOfAbWv/jz9+cnyRjx3CCXM=;
	b=XVdUvzQKzb082JHtmU/k+FOhja1oOy/Www3TLlahXyjMbCvSeTFOu1BTzNhBIOsX
	30tDNRp4sGSOJ0X7EDd91BAthBS9T8WLpRxd8iIbwtAcECP/tDBQNzWnAwvuDczhbyf
	+l8tPMeBc94cOZV//sXjK/h+hIobH4Ap2jYekmgE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a3621f2a-39672938-d3c3-4df8-abb8-ecb68d792d63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5307f41e641140d28fed9d650da15acaec9e421b21c20d850852950060b6ada
Date: Sun, 8 May 2022 11:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652008558
