Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2ED2100
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 07:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652426459;
	h=To:Subject:From:Message-Id:Date;
	bh=NIvvdkRyLg1SuegDkmAJYMz3eAxE9hRlVWIseTwyOJY=;
	b=EaoJi+LCM4gbzJgQp0zBOP+nwLR3DxLbmlFGWz7EmB3JnWl6JLUwGzeULrCDaIjM
	87Ks2oR3/SXP9IJzCN5bPRw1mZl4IMcgTDFWTNvG7Z6HUSMnhsyLEwHzWxQyMmySVM7
	wLjGtnA1mwn33Zafs+jDLfRnqp6AB3NkXHQtoIfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652426459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NIvvdkRyLg1SuegDkmAJYMz3eAxE9hRlVWIseTwyOJY=;
	b=QQ84dBop3JGzrUAeI/DuHtUUPs9cIyr++a1QE9NL3RcfOLqlf74at8jAr1ND3MQH
	ptCxm3OZ4pYRgGgw13TkS7GeNS4gKNf5Aanu91wOaYMsYqQaYwjTeTRtHmmzOuivXrC
	QXv+o+V1NnxSDGv9SjCz7v5GtAzT7c+dZKWsx7aY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc4ac875-c0cf8e06-39a1-43ba-82da-8a58e5d2d705-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f8c44705f641a67ad6a87cc7b3d5fb241e97346c01e6e20069c67e053b4b7ec
Date: Fri, 13 May 2022 07:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652426459
