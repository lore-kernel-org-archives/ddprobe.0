Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E718C10EB
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 06:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653546419;
	h=To:Subject:From:Message-Id:Date;
	bh=DOewlUAduv7BnMNJmqyCdG/YpWCCwoemQEs5nhzmXFM=;
	b=RKVi1WiATNYD9LHbNZ+d/pG/Kptu3jBb8+esStIZOg9XJzU9J8PfX3Vp79rQe53W
	a6Ze9PLFcaLZl1V+nN9UHYhl4CIxhXqMygmUsyJME84lCQPOO03wcbzcNbMtrDzFlHJ
	U/sN3W7clImL+spY1dRfM0+1aFTwhcmJIubIzBZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653546419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DOewlUAduv7BnMNJmqyCdG/YpWCCwoemQEs5nhzmXFM=;
	b=YX8+dpWJxJ/LuW+i6T2h/tw3+CAIlKcG6snfj7C1e8mzOU9yq6njPq/w+7pLnO1K
	gHS3tvaUpJozdczZ6atGXvxIzw2qbp7LJIaCUM5HKg1+IW6No8lEgPuNxuF92rHXGzi
	8+BiCV2cBOB19SMY7kQsgZ332FXFaiicEfqkmz2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff0c0464-baed3873-75b0-4458-8243-276c18ec251e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f64763cfc372f49acc89ea88905f30237e7246795e1c2f4847f3ebd68915782
Date: Thu, 26 May 2022 06:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653546419
