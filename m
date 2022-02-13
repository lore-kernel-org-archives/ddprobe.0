Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD90364
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 09:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644744655;
	h=To:Subject:From:Message-Id:Date;
	bh=9xV5w2vhMvIMWM1o/hhjhygVu8hNcIb+8phGK1ccG+8=;
	b=c9EotyJDXnw6mozRemp0biJNDu2Y7VVkEzEWr0YkDZuQD1FnMX0Bbky7j32bQzAE
	jpMImWGlxQ0XgS4Yu/r0GnN3sn10EJxij6GHPtI5Bgm6Z2tqYx4qhreFEh8+cPSMCBr
	AaCE1biN0NO27WZHpxeJi82xK+TeJ5c896dHhoOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644744655;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9xV5w2vhMvIMWM1o/hhjhygVu8hNcIb+8phGK1ccG+8=;
	b=Ko0brPx0NnWGEUdbZnYpCdZDPvlVT/8h5T1xXv3ogdtnGvQbwQNqChUXApAlODL5
	3n+DMY5xjG6l1AdGXxLOvDv7ONPXqTsmpJnNov3pE4rKYvo7nnL0s2Ptjlk0/WUy7HY
	j0gO6xP4KBZ3KlpN9KrJrqso3ti1UdY5X85LwJow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef26bc0a0-d557a2a0-3a92-449c-b87d-966c22c115fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aee09545e35e8d92fef15d073535d6cf8cc7947112307cbe53b33c5b56c8a687
Date: Sun, 13 Feb 2022 09:30:55 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644744654
