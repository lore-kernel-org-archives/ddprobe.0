Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33237B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 06:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650953998;
	h=To:Subject:From:Message-Id:Date;
	bh=+wqT6GPRjUqY3xMo8/7wlD3XrTQv0PGbZut4s/3tt1M=;
	b=fD9/qFto1vqTuOqOfr4bfq+2UXytGXBzC1C5QG/b2UNojymuBsTgC2nrjlOfU+hq
	b2wEIvXNV0zxWMfWInuuyk1qyTCqpNXP9vD8uKOpX1gzFNoBPojmktbcEMa/Ke5i0IO
	sTOCjnsjjAGO3bxfYE0Ubcqti0jZU99GUWDj8DrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650953998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+wqT6GPRjUqY3xMo8/7wlD3XrTQv0PGbZut4s/3tt1M=;
	b=G0dmga4u/dieoIuaOv10jsEIXQXXU8WPo/DnEboWqu8ei2kU8l0ntcq/Liqk7Ls6
	5XBj45Pd1knj8JMdiDiev7YlmlS4bzUnIVt92g8Gm4w6gpGlS/JAq56Q6wB0cSI/yWz
	eeV1j9FXR6aMf0Fz2lKUGrtNST12Nm7xGo309nm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806486cfdc-9487c52a-23dc-4e8b-ab6a-221b35bc1c66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54d0b66605caa46f1b2dce8459358ea6d0881048ad34e411ced430b5eca8c72a
Date: Tue, 26 Apr 2022 06:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650953998
