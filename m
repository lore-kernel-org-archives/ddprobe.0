Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592142571
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 18:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650911818;
	h=To:Subject:From:Message-Id:Date;
	bh=Nf5zx+yJ5xSzChe+GbWbGgDPfeZHT2BZpPu6o+wCFRA=;
	b=d+oRm9EninVUvCVrLCE8ieBiKN7gWCTkg0MAVmKjZtPWj9KMp6C7ctMpsmBzes8e
	BUaUI2p8hWDZCz6xl95aO1exBcAYg9WQ4jS7LSpxtRvDpYuZcci8lcVTm282w6JEZSo
	SKE7ojxfqdCMNw4YwS4w9cd5gFwM8+vyfrK+gyZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650911818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nf5zx+yJ5xSzChe+GbWbGgDPfeZHT2BZpPu6o+wCFRA=;
	b=da8TpKXie1p8Iw2X6ca6dNLUdTej2R5V/M4d9Uye70VMkfBTfN3RnsEKMLwTtw4A
	B5B64gVnljc4KGDb8Rd8E0WCrIgcCD6R7NOmzrhWQHFFZEZmsVlCG6FysBBYwRLbYKX
	nM44dSsWU9PuuuOS5Y14pdHnkwdRi5g2E4/7hPJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806203323f-6b920ee6-3367-486c-8e2d-806800023d89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cbb220f0ba6eddd4f47391e2f97f4a3e702251ec309d2d63012883ea73d3592
Date: Mon, 25 Apr 2022 18:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650911818
