Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8442628
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 03:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653361619;
	h=To:Subject:From:Message-Id:Date;
	bh=KG6Q/gzTyfeYRqBa1KF7laKHY5g33CiGNtFzE0Fbky8=;
	b=Nc/vJCrds7uBreJ0BPPvs2WzRJllXo1oGd6aOSnes6Ac0KjBprmq5Tcm6emSBJt7
	VJRcecGtq4XR3AEj9+SXaWdlK/GRO6lwgkpijWJXa+TnDYi+8MMV1JO20rHzIVdor8L
	SQRWJa1tO2g/wMxB6Bhue5875eKTjeo46yidd9Tg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653361619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KG6Q/gzTyfeYRqBa1KF7laKHY5g33CiGNtFzE0Fbky8=;
	b=BQi6x0bZ+nB0tNJygzR0ChKjMpZou9ag+IMVKKrGOPDwgxVyNhJbFjrNajm9mjG8
	siYUSFjIk1LCk7UA8xJhaKJpjrSFlAKPJa1Ux1QZlrFVXS+Y7YMxQlsEaS9X4hux1X0
	n4cBAwPT5SXItJRLl4KhaFMqgWzFTqd9UBKT077E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f408311d-12b1027d-b51f-46fe-a5c8-d6f7e84ce82c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6b39c595639b0101f42035845ec68a89b12ee2983d13faf482869082f65eed9
Date: Tue, 24 May 2022 03:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653361619
