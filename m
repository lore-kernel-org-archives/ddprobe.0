Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E7E7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 13:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654954619;
	h=To:Subject:From:Message-Id:Date;
	bh=FNVZRHkNCUuxp11YmE+nSCKTKw7sGVx5UJ1mlYlm1og=;
	b=ajLQ3y0o78OXeCxUyHOA4mg+v06HVoHMXX0cCaVFC/w3rAT54x2jMVVVreo/sNw2
	btJccoqxK4cymG52BefWi+nLJl7w5yrm1J+jSihxm81DYuDKJTJKKqBVlLjzNoEZGJS
	WNbowNQlGqeqZr8WztPvzDMaTlntFLXcKXGaej4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654954619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FNVZRHkNCUuxp11YmE+nSCKTKw7sGVx5UJ1mlYlm1og=;
	b=BqW/warDVlL0CU6zBl7QRuAJQRaseKKrQ/0LLzq2ZijErKph68qKU5zX+FNWjX8z
	EkRdx5HpKoq486e76myVDaNjrPWGeaHyyDGapQ1InVbAUEJqxt4vnLkHUyLc1wEQtYN
	CXqNzQs/vKn9gYlUfoKAwxXaSizZRS6ag1+lmNgs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152fb718d-27217dec-cfc0-4714-9f5a-72466c16505a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 370b2f116a77d2b7491c0e79db523831c8bfb053743dc18a4b10961663862140
Date: Sat, 11 Jun 2022 13:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654954619
