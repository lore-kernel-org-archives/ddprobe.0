Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1379B33E7
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658170612;
	h=To:Subject:From:Message-Id:Date;
	bh=a+Z9w4EiV/OSITNzSHXOlpvISfXHltrYUTaRZCA2qB8=;
	b=IGHnjUavUdXlaR79BK+PT/L5Qb6p44huJYdCCroS5aK9413TvyJMKtjsZSjR8zb6
	9uETrkeB+i8hxLM9BDIkf9alN76pLlVuzV5B1+09SKKpmZE7prhns5g/OToT+ZEyO7B
	d50+8B2wX4MpPEkGHrYrJBib2CBM/UiPZLTd+yPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658170612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a+Z9w4EiV/OSITNzSHXOlpvISfXHltrYUTaRZCA2qB8=;
	b=Q8uP1fvON/fLQsUZNiz1NgYxShGJw5Lo5cOANCrtVGLL+RS2xVeID6D2vo85xis/
	JgzLGMmTCx9v535kdRyp/ebj/5AnRMDCy4F+Rae8zLrqwG+AMcTD2TCFVAhQE6jVLra
	IzKVaaU05W8NL2z54WF+lfb98D5X+51bGlf/UrYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212ab9a59-add20110-967c-4cc1-af1b-98dc558c5343-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d94cbf06919b4d3d92b0656f88dde6906aaa283aa8871bc816ec227b93e036a
Date: Mon, 18 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658170612
