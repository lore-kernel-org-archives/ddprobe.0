Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DFF1847
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656724012;
	h=To:Subject:From:Message-Id:Date;
	bh=dQ47rQVyvfaCE8UZmQcKopbNIYdyu2zMrktcFuIF4UU=;
	b=KrSI+UdVkTTF9P8xQeILyokh7IUWGZzFKEiVH6iKlmRoXrhX7Uq6crcXe0AR5Eyr
	x6Bqtm82RFmvofWK7iMzulmW73Osj/1Wvu1Av9QgbPokuUvXX9Ddk8h7mIjfDgMMTyQ
	0N8i/AIjSJM+C8JdbiBMqrZ8Xe4dr9azjxYVJB3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656724012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dQ47rQVyvfaCE8UZmQcKopbNIYdyu2zMrktcFuIF4UU=;
	b=kxErklSVTzjrNX2buFYviEZG0HcOlo4W04STJ+FWIz+BZp8nOtHKjm/HCF/h23KG
	FVgeDgKhd2H2fCcXP3kMyozIvj91OYCvmc6lOr2P0wl1AS9zsDqkFnryQygiCfJjlSS
	MmnBp5rM1gsrOPmCf1qXKDmY8+rt11mGnwHmXEKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc723d49-7505c23a-3a0e-460e-9acd-75e190fda751-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84a9c7d69107a7b6685e2c26e4368239384c84090ae5111e02d8a9973cb35129
Date: Sat, 2 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656724012
