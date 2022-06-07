Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104BF2F48
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 20:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654634339;
	h=To:Subject:From:Message-Id:Date;
	bh=B1Xh+mZWJTQww9MAGH7L9yl1z9zCJJPGueMRdrgWs78=;
	b=ZPWuU2LsRJx7rlpkKPgPEmbKa4tKURapFYHj7AqCfdOjTZM7eXPN1Vvufdq5DaPn
	ymsBvLUw9LVQopg3XmQG1KgSKXN5qD9Kf6RHmvxSB10i+kDb0bJ/brYRcSM9kA5CUfn
	b0eyBiN6+IfLCB0m5qer/grlUp1wpHcX7zudnuyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654634339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B1Xh+mZWJTQww9MAGH7L9yl1z9zCJJPGueMRdrgWs78=;
	b=ah7EZ0MRYAy2rLOqCHd2RbAeTRDmv9lx8aWi+3wvZ6gSaTKcqXEUu5/AdIiVmT7U
	/xyyiOa8Tq2ZiO/EwYX/VJ2ZguqqouBZPyWp+325lfloC0R2+/WWOdE0USxDwyIMDJ4
	XUIJQz9OJHln05yn/Qdpk2SZomRSaa/26jiQ56uk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813fe45bf4-78ba3ac3-681e-44e8-856f-054355dccf40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c8c5652aef80ad6d3559356ea0d1e06592d7875ee24f6f25bafdbeed25476a8
Date: Tue, 7 Jun 2022 20:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654634339
