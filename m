Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CCA2917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657060612;
	h=To:Subject:From:Message-Id:Date;
	bh=4ciub4tr7FIR0iARsE3zWop1POwP4QyqPzXRV72f6TQ=;
	b=T9uxyAhpVOIflOuR71vsa0jxy1Hp8LLeJY4EpBHTwuxx+yKJsmoicKt9D1U4w4BJ
	JQjBhzONVzm/Q9gTwXPS07bqvJ5QWaXKDQtyC3wb4f8zTZliZHxk8SxDz0dsmx+La/A
	z2VXC5frBF0Vi38RIkXxYMPjss+YKrCcjossjhZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657060612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ciub4tr7FIR0iARsE3zWop1POwP4QyqPzXRV72f6TQ=;
	b=D6NgSgQcsPTSLylfaWUIJJj7JR2/fiqNIT1Rg7w1Y0T8I5Y8Gab8uM51uWxaGrlZ
	WoTUv0GS69tppweyok6k8VEPyqhTaJUiYA+axEuA+TAvfP/wqYrTYaTbW3igqBX5Gjp
	Jjrl2ov8jNYGQrCGxcwMm+9DF4s8lkjDA+fZ2wO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d08258de-b00522bd-c720-4098-8797-6a5ea803e5e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 651daac9474834ec564e791edb804c5f1ed96c0def0d40f9a4f39e1d38849476
Date: Tue, 5 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657060612
