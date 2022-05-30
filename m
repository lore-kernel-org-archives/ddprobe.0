Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE892F29
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 12:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653913499;
	h=To:Subject:From:Message-Id:Date;
	bh=u6G0ypTPyLhj9Z/adD/A5kDsMDeaUQ2aPS4PVqST0TY=;
	b=Rihdz+m7LYLc0IzRYSTRXGqGOcKXrRLc8y2YSz8/i4qRjP8ylQuIUuq2MENWN7vJ
	+bFKCUT7Uzw3ulpaEpIUjMLlZbHMGzhA8rY0ZuUwUjuyKxZ7KxpCe3Y8HOtP7gJ1H8t
	6g5274UHFQG7bR6Mbi6KQc9Oix7l4CnegllvoGKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653913499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u6G0ypTPyLhj9Z/adD/A5kDsMDeaUQ2aPS4PVqST0TY=;
	b=GJi35goWBVBwMhvSWeO8DYxcgGgKDw/p3wtSNtvlFlZCm8jqxGxLc044TiTNfZJm
	Mr5IGAscKt3H1eK7I/SY4ZudPqgeRQwXPGl9SB2C8NjUWciIwCGHWkqbvxMqXOKXCF1
	7sSPSN+kij4lVceH4A1fcaUUtld5CsppPu7zps6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018114ed3683-976ff3be-43a2-4833-96e0-d2a549d62c35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aff18406c85de6a2ab43409409340a5aeb22fa77fb69df987c72ce3cb3bb0a09
Date: Mon, 30 May 2022 12:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653913499
