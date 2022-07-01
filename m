Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBBE3C1E
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656691612;
	h=To:Subject:From:Message-Id:Date;
	bh=hCupF0wZfjFBVFfz25Cd2jpnv9OYBJmWhMajODTEvug=;
	b=MF7Bf8JP1okLjLLtJ4lQ9xsW1x6hE6X8TBHFqKdEANr/K56P44Bds9so9k1k2074
	QXssyrh5DZ7c9VPfDtRx68yYbc8tKZ9qSFOamdSsOeRMdtT/woD9ZCYOM2JtGaGcW0z
	8OizyqLWev0u1p5r3N2htfv8i8YF/3IxIj42iq8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656691612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hCupF0wZfjFBVFfz25Cd2jpnv9OYBJmWhMajODTEvug=;
	b=cu5sb3gnZstlt1L3Iv7GYWcNRyRCwDr2bksf3W5+GojUNeGmc4uRC9u/5uNcR+T3
	scOBAQy04qeW2FXroFziQzY7IRum8EgPXZP1m7PP+Y22Wu3MlvVFjn6vDQ/oMQCFCvn
	/M2Y1Y9p2QfyskfY4yO4dfjwqeaF+Cgiy4zElkRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba83da8d-7b5ecd4d-f0a4-436d-9f66-96bc382e2696-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86bb2d73148bc09a801ce50fb8b0e9c4a0371c53c9704915e8dbb530523c13dc
Date: Fri, 1 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656691612
