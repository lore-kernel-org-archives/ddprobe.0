Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F7363B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661076053;
	h=To:Subject:From:Message-Id:Date;
	bh=fbF3B5fglTjWYlBoWadedXkgDNeNlnVZvs6kNY/pMS8=;
	b=K1jlgfX4GTejGUXXYPQ3nJJWnIraBhG7PlahmSlbaiq32+lFdlMLE8zQsbpBvhlx
	NIsirt4hPQn8X5q12DL3UTFJ4SeZ7pDQuCbQwnD1tBFKcUNDlBmoUGwKJPlsAqpRwK3
	w0lcZqS9VYcMY8uQXBfWEP2+VuHxzLYg9Oa+rMkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661076053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fbF3B5fglTjWYlBoWadedXkgDNeNlnVZvs6kNY/pMS8=;
	b=FrU28LUSSuvO9u8JdZ36GBwUj7G3q7vcuA21Ywlyb4qyRvW7JY7//0WzlxRpw1RK
	6ljmEBQ2eTs4TuwFNZyEqeWkx9M5nAxuPnQPoGoyC6X0Ma+qHZ3M0vw3xisYz9UfEDE
	Cdjcug/4Bg5uWZvbepdNcWU4xafK46lYR1vh0lKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bfd91a3e-992fc720-9920-4e33-b0fe-24fcb22c06da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b0c8b495e64b9a4220cf5a5dd3c1d1055d8b06a8cf446daa716e4541c96ae5c
Date: Sun, 21 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661076052
