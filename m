Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A02B7C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 07:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644738039;
	h=To:Subject:From:Message-Id:Date;
	bh=Ao9glacKmgMQ16ZrSP8XzF0TtbVTJXUAVnGNL6GY5oE=;
	b=Epzq6/GflCa0t9zx90LM09ElhCmJjnXKI+D6C7/DGVH6awUd1XY4AQcwNFuBBFFU
	OD4NysfW/fQq5wthLSVNKppDmX1hSeV5iS8EnF/ZGfJyX0MJHIU7KhWvy0T39YHKtgx
	AicNd/Ll17iMgZE+L5CRZi862lR9ZG/LhG9EiZoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644738039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ao9glacKmgMQ16ZrSP8XzF0TtbVTJXUAVnGNL6GY5oE=;
	b=DrMwMZxZQXcIMQcePsTt3HlNP9bvW7x6q9n0eq/vFIgjXqUN3l9FSiS2A9tvDUv8
	r69aFY52CJNdiCsxN+EFXXEj8Kpj8fZCihMXmSxE9A9Zw7eoDaKj6IwBYaHQAuTu34Q
	/OgW0zEcjQRbo7JT/B49bI8UbGQ83MB65MCJZ4ig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef206ccdb-4ad1feb1-328b-49a1-8be3-cd8ac0f53634-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa63bec251e4fb85f8b9191ffa49b22e81c7d85342eb08819a57aa30708a72aa
Date: Sun, 13 Feb 2022 07:40:39 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644738038
