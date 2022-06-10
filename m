Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6B07A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 20:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654891439;
	h=To:Subject:From:Message-Id:Date;
	bh=gyJtma1wf47OZSp7ChajinlQ0ixZnMgY2C350DJrP64=;
	b=Cz1K6l4OUqHJe2bjCf0KM7NzPcdVSQB2aR3lmSvvihgywkZSc7jkYEuFeOHlUiIf
	hBTQ7jW07Hm+nc8PunH8lI4EdL1EveO2nnRhDBLdHwzA8L8UQHb++KyBSuzAlwPJEzy
	8z6is+MgKNKHwFfap7S2BPo3OHy8jHeeoazTp3xg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654891439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gyJtma1wf47OZSp7ChajinlQ0ixZnMgY2C350DJrP64=;
	b=AGNuO+HsO0cVLRW9hPyIq5WkIqml40w8lqXuZBFNrHTjSoVIIti/glkUqzLTiXmo
	c3qz/w0BmOGKxVs1DWRn3XTejzaO/7A9SvPgQpXWlHbQmBnuVIlgl5GjezuK83/xEcs
	gw84TYersiG1GFdUH/lIMXWuxhw7oS8qq2li4tRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f3764c0-baa9b85a-d54d-4998-9fbe-6b78bbcebdb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 999ce9af81be589f469dca1a7e6baaf017f0f5febc9e39a15f0e6c2bfe386f65
Date: Fri, 10 Jun 2022 20:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654891439
