Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C81246AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647400284;
	h=To:Subject:From:Message-Id:Date;
	bh=7PgyejeeCmIZCvM3/lKCSuCqf2YxVxZHzn+vmRIfYU4=;
	b=azFj4P5S3Ehx07UY17TLFbLZ+6qQbi2IycWS5t9GEfqdHBV6la7hJVZGcQLsm1Uw
	NMD2MueaAIA/M6YI4Qil3BT735ryfyCI8D6FIVBHuaZ3ngyeSzr8i4MMIZA7uZJMqma
	xhiUM8V9i0ONTctv9CsqstCOckGW9njkq78u2d6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647400284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7PgyejeeCmIZCvM3/lKCSuCqf2YxVxZHzn+vmRIfYU4=;
	b=K1iK0g01Xs65KaV9dsLjW/a/5bFZXuqtx+jal7jkZLrTjLGbPYpFZorEcb2+zsGE
	l+a5kf3I0O3QIJOu+4XN6/BQ1G1wN7Mm90Hk9qkBNk22pF1t+lNDtn7JN/CBhEaM/63
	6+D9NLfnQfzk9pmaET/8X15zFS6fvSOE7MLQn58w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90b57255-c57952a7-b32e-4c73-b893-d9e781b3a138-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3f6485c09d999255d8d496c0f26a902a1154915065882e43eb7a0e016573673
Date: Wed, 16 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647400284
