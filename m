Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1649E28F3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658656012;
	h=To:Subject:From:Message-Id:Date;
	bh=apF5zZosM20UXdyxAm0J47ym3qMtxallVQ9GtzyLNq4=;
	b=IgWTWuZirhD6tH1R/Blw43eq81iNPDYiuTiSh3bVFN2qpN3y13wQqNZqeqx0qZ45
	BveCS5yoV2vkqzRE1YoieQcw1H/p3/H+KRe4fbrmAXOU4o0TRDsLe5J3gfafcvK34V2
	kLmC2QXxpmtR4xClFmJxBfNONJEBYOtJ1Vq5nTOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658656012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=apF5zZosM20UXdyxAm0J47ym3qMtxallVQ9GtzyLNq4=;
	b=Y2qZ+RpwEEuZtjWuzuU1O82Ase2jPM7xdmKcOY4uQ0ViTzVzGnAzajMNzNCUjHtj
	6+64ROtFlgFwG5HME/X/NcZrU4rVulqHmUUK/OA5Gfq+VHZBCSg8PNaqbJhU1k/5heS
	6mWVhH2GoBm/fgOqv/BSDVH2YnILe6n1aNOaBbJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f9a37fe-06c64bd1-f89d-4226-ba05-d8057b97bc3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab4cb368803e7bf6eac79dabe820072b633c76648020fa2b1690d01232707a92
Date: Sun, 24 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658656012
