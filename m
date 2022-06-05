Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FA6257F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 23:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654472519;
	h=To:Subject:From:Message-Id:Date;
	bh=N7cdOq2cz5Keac1/aZVCrFv7mu01pYzlM5mU/7dRlZQ=;
	b=j+WTG+50TpMbKnfDozoYYwG7/oHDRm3MEI5jko4x+9GQSk/ndmaAwsCxXqP037WZ
	6bXxJy6t9xm9iGw6j9dFmVPkKG37P5hKcMF4NmxpAJVUVR+J9zZEhFxnbiMyx32iW9b
	+U9nQtXAA52SU5Z/LZo5DHDK/JDSV77vBz33vJ8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654472519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N7cdOq2cz5Keac1/aZVCrFv7mu01pYzlM5mU/7dRlZQ=;
	b=AiNYyTT9hbBW7L3wp6e4VVG0YOTehLqzZTtuAvT5wD6h0ILxw7wgzz33EOonKJ2r
	Q463NgWgjXpL+CzQm9zM1FfuRkW58OFx6E9+75DHBKMzSdFlkhq4ZIpMsqjUIZTUfsQ
	iowzuzdT2mvI3iwdmQ9PD+Sp4B/r1cl3SMWSBJ7w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181363f2e4d-217d08c3-0140-48ea-ba4c-95ff30047dc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea2db25f2d53e092aae9cbe7c6da84a081360dc2bc7816daa8a28b66fc30e11c
Date: Sun, 5 Jun 2022 23:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654472519
