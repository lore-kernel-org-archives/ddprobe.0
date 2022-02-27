Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CAF7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645960284;
	h=To:Subject:From:Message-Id:Date;
	bh=g/VdJ3yFVNVM0gj8wlkX83fzysp9jXL+CJhubzzgQGs=;
	b=Wnil8yolUYJZM2QiI3zJTr7A5s7SHdCidgomow6+/Mo2nXMADpw1i9LW5u19BHgM
	YiYNpfkaF3i+SP4f/o97eRTcmV3jf9UtMp5WuSKwEbjym1JVoz9+8mbeQHw8oBGk1+c
	b/PtcqFoqZH64qUkll0MYPeytBzQFUYEmRAFuC90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645960284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g/VdJ3yFVNVM0gj8wlkX83fzysp9jXL+CJhubzzgQGs=;
	b=BMxPe2oB8qKJZANScfRBRMt5Ke1Jn0qr2EQh+DLCU6qpFQ4u15ezJ5hR4a/xal1Q
	GHbpltXZENfBxAvvMQhI2HYe5fD5cb5bep0r81zoakSnA91WVTWC+SO51QE7beWMkGZ
	+nsa5qSEUFpsrWw6NV6JpJGKbYWauFZwHVzDGEO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ae0ca5e-a72e855a-4631-4bf0-83db-d012593e99a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edc78bc7008537870081557fea1a0791559d01db60d7be2a93e5e08951d5a1ee
Date: Sun, 27 Feb 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645960284
