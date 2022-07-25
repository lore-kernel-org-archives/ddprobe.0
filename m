Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1121375
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658759212;
	h=To:Subject:From:Message-Id:Date;
	bh=Jmeo3ZJXeAYXq3wIbQFwJ8GqtwdaKOFK/nji/gG1yL4=;
	b=QsXdmSfH/HKkpHy3Tmtqj4GPrfpDiJX+xl7ssLxQAvDeW5RqdyQo6dDTQLfuKDHs
	jmUaevUPo91tSPq8eX4c/gcWUYoCKk4zIBvqjRShKksErf9UD1SAJ3VPH7QDi/fK7v8
	8iiqtrc5o/Cevx6Aj3qWJ37Fsj6Gycm+AAcY6K+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658759212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jmeo3ZJXeAYXq3wIbQFwJ8GqtwdaKOFK/nji/gG1yL4=;
	b=HScUt7VOvIYOdAR0ZZaoQjKHwQQtyCzbEpI9g14CvojiSn27sGADrf3cfIR7Bs/k
	UOrMcjrPXm4k5/VwDWBs9FEXhgNPEdwdScLu64D/lqbOo7AqvG0bv8WXNiNNADI7Kru
	zbDQfGxxtUeLLbpLzQuLuc5xTQhV6hogUYAtJ/g8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018235c0ed18-c027b44e-15a7-4c88-88c0-e439a62e5c0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5f9fbda8a301a408ea9dfc57f8574d0e6a4ecd14b38e4af90dadc3e0ebfb875
Date: Mon, 25 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658759212
