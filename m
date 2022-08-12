Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCAD1396
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660318252;
	h=To:Subject:From:Message-Id:Date;
	bh=NqoMj/jCLhiTOzcwPXUWHYH0SxJuik0lwURZZG+78Jg=;
	b=SFBzvMhhOVeVw3REnGxn30PQoTlPzdcULXVFp3Ah7CU/SNH5A4xwonVksZc7zJfQ
	seoroBG/R4XUhfWpTu6WwA8iA95zg2QoDJHbXdK7yH5bAUARwM71YEmjJFI3IjFEfiJ
	YB6O+WuHqe6gj7PaeC1eyEYa3/YC05Lfx7RBy9aY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660318252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NqoMj/jCLhiTOzcwPXUWHYH0SxJuik0lwURZZG+78Jg=;
	b=UaIRYVOaZIwOqkwrLdGTLcoUonNgJO9O15S2Zd14ttpVLJWvRqeQamm6D+hU6gMZ
	fB3e3bA3Zl+kI4LcW6ylTQO+dT1FY5mCjDlap2+L/Hvtb4w78d9RU73nCFy97bfaaTw
	yQWh+aO5wrrzcZ0ExQYVdtKQD13B2zRzphJUyN3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292adfe26-57af8c79-de99-43c8-8563-0853e77dec5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1df323473306ac9cc64e3611eb26d3638de20236056863ba833fa4608877c364
Date: Fri, 12 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660318252
