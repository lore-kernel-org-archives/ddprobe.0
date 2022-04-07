Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577B420E9
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 06:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649312158;
	h=To:Subject:From:Message-Id:Date;
	bh=D6LUX0c0Fc/JwfHidfU7PPRgMsTFN+3VkUkkBSfEtmo=;
	b=En2kP/W2iGpEQ0CInGbAoorn+autYLask2nxViMnqNQTAcgOqzVWaJbQAnZTAXvP
	IXpJr92NNQA0P5zPxhOpl49oJJ3QmMIeBl8iHfRVvZdoxoQsH47B+iC0F6Q+Bp4Z+BG
	Y4oavQww1vjXbeEP0xRjfw4IG0qVZOaeBm2bE1KQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649312158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D6LUX0c0Fc/JwfHidfU7PPRgMsTFN+3VkUkkBSfEtmo=;
	b=NjF6BQP/vmE8WWJ4WBH/tI13I+dUnB0duDV6M1yH7pIGOZVhm77jYGChi0PdP5oB
	/0SaKuQ+iV91T7bSGG+uhMQFpxf1K3/qgQz0FyQjV6xv39CjOjLIo8asWT/OMBM0mQS
	QKwWQ145//KDh7L2CwTZsrArvkoL71PwHk1RpuWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018002aa5254-e79e42e5-de6d-4211-8a84-fb3ca6b9509d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 742a7760f387c72405cd0a36d717fc95ea3d0596a143eb2d62414b328b8eb1cb
Date: Thu, 7 Apr 2022 06:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649312158
