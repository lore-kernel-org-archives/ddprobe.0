Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D28A2F50
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 14:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654008719;
	h=To:Subject:From:Message-Id:Date;
	bh=zxwn8eVfI4hwnT7/HojqB/bfhzVCYjnjkg+9tg+WLwY=;
	b=Z+WZXtJwePKRtVLa1nIQwXHkzCYgczTBgwBQRHj92rMHwjGrKgbWQR2TfRF3PyWq
	74iKQWBV2SFw/TO9VhNcTBL9HsiWBbCxBY9Zda4Za6jCsyHgvx5JybMw9aLIaB70P2e
	tx8WyaygqrpU3et/k8LjmEV5qVubJ05b3zX4RzBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654008719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zxwn8eVfI4hwnT7/HojqB/bfhzVCYjnjkg+9tg+WLwY=;
	b=GJJLizUk5A86LstLU2kIouw2rSfZnZaqrvu+Jk9nvShQEh68Xa8juIIvTeBvjV5C
	zsXgpJxuJDjyDIz27FSLUZSKwkGdzVzP16+7xdQujPxguprK9+SqfBGxWSYl79jiiX4
	s2q1qxBCDxFdZTFx2+uNmFQ8PYO2pCrW1awZizug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811a9a27c1-79b9b236-8978-42f7-8bd8-ad6896c4dc6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 329d25268968f48ce1ee3af4a3010c9eb266534503c4ed35ad29ad90303085ec
Date: Tue, 31 May 2022 14:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654008719
