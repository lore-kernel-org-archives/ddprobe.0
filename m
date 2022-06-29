Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A0A7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656521212;
	h=To:Subject:From:Message-Id:Date;
	bh=iSwxdvZMxaaR1K8/wEi3ffQ/cvANLKxKpeLnYEbvk+k=;
	b=WtXDQPShL9oADOPBXWZ4Kef/YajyPl92bhgRhgpq2uD6v9LWBY/UVJacIhRFh1FP
	7nhDlPyPGkI43OzwOFMl3D6FHNcoUJzQKbiIT2hYUFL4gHOcSOhdZhWLH8w+ZM97FEY
	5L3Adm32OHqQ2VON8sdwh/oKu+OIyJZI6WbBZVWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656521212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iSwxdvZMxaaR1K8/wEi3ffQ/cvANLKxKpeLnYEbvk+k=;
	b=BgpxIBpdzvlqgtEHE9nwEFJf/eb33Kcp8Dx5I+9yCg2sALBAHYojC+TVElacxtoA
	PYN/ZVUEnVF7RyqDn78lVTVV8XGCwRi2e2PP1AzBYN8IVzd0UelNRWpay28eYQ+uBdX
	uhLNfXPCwM4D/ek55f/AML3Pju66doLeMoFIA21U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b05bc1bc-b666d507-2df5-45f9-8761-52af761690e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e7b96961423a7669b2eaac32ad643e322363d810727b16d02b73ba37d7ba4f8
Date: Wed, 29 Jun 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656521212
