Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C533C0A
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658173012;
	h=To:Subject:From:Message-Id:Date;
	bh=ujmoUqRckXagt7NECwoFur8UqjO9at9Nzw4NkcsVq2c=;
	b=GPIoqI0fyQAXvNclKLkyfJL6zKhHgyugKadRHTJQ8KmTgAzOa6vULRKP77tyR8JZ
	6l7db7/z6Ft2fVKuUG5G322hAhbv7MWaKd6oRpt3RdjsY3FkM0AAzn6zEApMbfwKsg9
	vroORDeYZHzkEyU2Vgro6GYTtYzoIX9Ankh7xac8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658173012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ujmoUqRckXagt7NECwoFur8UqjO9at9Nzw4NkcsVq2c=;
	b=GogCGyyE2M6p47r6bsH7/lWkAXPLaIjLhPsZ3jpEKfAiv4MQPcz61n4CadNrd3bJ
	iMXw0HuSTXCEfCDOzPEH1nQirYLan+o5Ka4gCLv4R765Kc13q1avDoS2+7DMdkIo29i
	VET7rDrIE8iCWrlJCNazLyqUg1Z6vyhqyErRCXdw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212d03955-d3eb42bd-2e58-4f0f-9540-4996158cac0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 834661ab38af899065fa61ef18a3502c98a1e072e5c76148397598d0b0e44a3a
Date: Mon, 18 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658173012
