Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD26F1FD4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 20:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654461479;
	h=To:Subject:From:Message-Id:Date;
	bh=FHl+YeE8iH4Dyd213/S8HDUJ4v2Vor9kxOy02pss1sE=;
	b=bx9c1TpgPGJxagGcgw6+8TrYIfyiuq3yQyuHyeQ1lBfSVkBfP6zw3XXyjh4fwx/L
	psEEupfLYUWvSyrq6lhc98lFEvI5wJ5Brft7VS8jEFm1JVEv+N0fkkrjW2wtEp3zCXb
	buYtck6XSzzM3DAaz7xnA93fAIjd9xFTsE/UZMEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654461479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FHl+YeE8iH4Dyd213/S8HDUJ4v2Vor9kxOy02pss1sE=;
	b=NJffgk6tSYbIV2FHeEbjP81FFavxeIziN5o8qhm9V2uaYjLqCGte3Ep/xgIUt3UG
	sRSZDdYGLYXHpeD/iUtqwUwsiuWno4W7HsGXFCnHGz3Y4LsYz97NB+13nXxLKO4qCBB
	l7PPR9xeWn1sPoxsl58cj3REIlNM9lfltkZ6lmGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813596b91f-7dd843a8-b2bc-4a14-a601-9eb10664d327-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a05e149c51e9ff181f20829bcb591efcb1bfddf49eca14646cd1c74c81fce03d
Date: Sun, 5 Jun 2022 20:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654461479
