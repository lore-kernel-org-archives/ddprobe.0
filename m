Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D252F56
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 07:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648281238;
	h=To:Subject:From:Message-Id:Date;
	bh=GdFlPKlQrarYPjzX4drTYHCzRZWlsfhz6xZ5kcaxadc=;
	b=dpVwR13rdpqOqJ8TN7tFXS6PGJjwsTmtiU7TpfeoVVftlIqrvQR7qxyiridOwbgy
	iAKV0U4i0HLBlfncg6TlvW3Yf0LXD6iWAoALF/aoOP+Cb3uRKp1pYTbgmzHbIxM4oKc
	gJYb1A9mpviyfXIy0qOq7i+FvTwxdJJF962b07OQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648281238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GdFlPKlQrarYPjzX4drTYHCzRZWlsfhz6xZ5kcaxadc=;
	b=QPXG1JDKlMuWXFyaaC8fis8x1hhZB8nLZKozTIepC0o2+BrdMNP7f6PxMw+XiJpQ
	pE5bbj2/5H7hLCy5JEvZnXE9DaPyD8M01Sj/RMxf/jIWSOXNBqYItGGnGmlaygrqoF0
	s6FmjogPwcclW8XRYKEaZ7lH4uQhuderNqAjbwGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc537bb15-fbaf8efa-7299-4a5a-b2e8-efa6acd41775-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbb791abf36239f8bc9a617e3c4053ab64e5339c93b1db9c79102b20849b449e
Date: Sat, 26 Mar 2022 07:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648281238
