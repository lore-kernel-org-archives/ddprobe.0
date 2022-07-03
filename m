Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB79E3D99
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656877612;
	h=To:Subject:From:Message-Id:Date;
	bh=8kU5ej9RtQIYvj2j23gEXV77vLKydF66SMNfPuB3R8w=;
	b=RAkrbv8IRhY1zZxI5HEzwQ6JhpE4WJ446dQqw0s7UT3wEIjTgKZG/1SUXj1PEEnk
	uMPXWqowR2vhs/l+why5qpvBSXmdPs4K4+iuakF67pGG+GnBo0t46Hra1XEeDC1yYtd
	QqVMyD/F0BG3OKkbNhNCXQpd64vnMR8kJSgaglao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656877612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8kU5ej9RtQIYvj2j23gEXV77vLKydF66SMNfPuB3R8w=;
	b=Z8r6svljyzf9eMWRhBmVm8TE6nI4mwD2RWmwFVG9Z+jna/tHi5gLTcj3W+zv2lGI
	e7lD8NR6EskXmXV0NMcjGV7I5k7FrAPAM0G8g+zHzHO8nd2m1PcYtd6RjjUBqgN9q1x
	9lnkzOBWXYNUL1HAfb1uGEMus+NuyJqRBhZy6rr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c599fd2a-e49c277b-ebe7-4091-9d3a-5eb5d2d33194-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6017ba95a501d9419a612c03b47adaa02f64c0ba712d2c027194c61fc84964d
Date: Sun, 3 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656877612
