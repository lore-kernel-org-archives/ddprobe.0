Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4907C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656222412;
	h=To:Subject:From:Message-Id:Date;
	bh=r29EQqepkvp6QUbk6Ziz+8q5p2QlEs+RjjH2UvhlCW0=;
	b=idKZbLov8Z7WA++XIve2DqSEa4Yr3rMuf/SSQVI9CLx0xV04BA1/5bd779AIpQ29
	Bl+9ydLDtQaXuCIYKe01ZUmWW7jxJA/gaRuAtDMMMqvLH6OTW5uOZZb8AXVo89kh4Fi
	zTD/741qvzHhyYYaqS7oFdhZZVvRfFGZbgcjT7ww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656222412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r29EQqepkvp6QUbk6Ziz+8q5p2QlEs+RjjH2UvhlCW0=;
	b=V3EwJcw+QJ+aLzvBqasVk9KCzGsGzN5zkjsM4W27Vsj+0TlJmpFA3RNwyk2UoHzI
	uDV/09AWV+3p2CPkM9pu0TNUjJo4tFBWPi+CU2HMOUJL9CT7OYRxEUWkuk1I/VjRWLb
	+TtM0FKLgGR9VL7hzo/P6d6naRHoQZQTcTCAaIwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e8c6e11-db87a53a-804c-47fb-891c-792954fcd287-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f91de32af376a272448c418c92bf00f486ea6a4975f4273081f1e92bf6eb3f02
Date: Sun, 26 Jun 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656222412
