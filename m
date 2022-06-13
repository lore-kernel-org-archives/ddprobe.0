Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1661119
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 09:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655112179;
	h=To:Subject:From:Message-Id:Date;
	bh=VckvmUXWaXI1aK4IV34LPDgsem42hr8AiM4GaLSrzns=;
	b=Ilm49/yLvpT12yWaoDKvv4C6mFWWndWhZxiDODJ7t+5eSQbEtxs34V9S0CdCHl+0
	7GBYkTGkTsBZgGiV/IViRzdXokRV0mc37eOHzMR6Ml3b85D0mmb+czo+aG7xnARwHpd
	3BFaqYglNfCkK/9JIQx3M/SdiEZji45IIppnAcA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655112179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VckvmUXWaXI1aK4IV34LPDgsem42hr8AiM4GaLSrzns=;
	b=Ye0ZugEMnBoW4hch4Dc4qfsllFjyMn949+0wNQgBLzNKNwI9QdZOQe7Z9YrqvkYw
	HvuCFCGGyYWX8/EKG+Q/disXRl2B8YTzynJGjw9+NoMeMpRyvs7Y3o3SsgqkGmG72No
	l6EaC6c54vjYmY6DdZm6dLh7j6mJJyoIfoJ1x4zw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815c5f9e44-e0108702-2110-459c-8efd-8adf7e6d1e8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c64f7e9640ee44a1068deaa57a022c76ad0eff204e404a4cc08649dc44465df
Date: Mon, 13 Jun 2022 09:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655112179
