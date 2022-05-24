Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E1F7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 11:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653390959;
	h=To:Subject:From:Message-Id:Date;
	bh=qFwEIScqlrlqc1F7NYKMDjvBWbwCfqbFtZo4K65sPaI=;
	b=hvgMBugQ5aM9R3D9I+PiX6+hKqV59RKGt0OoNX9r3hf/KiYAK/zxiuhGe2si+l4d
	TL0A/s0K9qWp6aZt5q5O8GGR9SkEKGzs8fKQtzhbBtXF4aGTfiGrame4J/HAtKv0RtC
	c5N68Gt0Tn6+bfkUX1ZKNEu5/YH14Nv55DAxKTGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653390959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qFwEIScqlrlqc1F7NYKMDjvBWbwCfqbFtZo4K65sPaI=;
	b=QpyQnMg0Z8KkweDrsMnqJko74YPox0J1jUjCoazI1FEnKuzqHIVD26dszb51fiYa
	Y+4bOpLn6vDnI1iMnlEB5W9qv7P+/vFbCpowtPsq+rXIkK/9ZVeUAAi7Kw9V4DLaPlG
	9gMfehhykg8lqwRNjpQJ2xY6xcM/d8doxuCd4YLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5c7e2b7-9bc9793b-5255-4bcc-92d4-61f8f2d2659a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be5663ca7b98b819b6dc26f3fb1c296ad3a75126b7f70db1093c53cf94a5fa85
Date: Tue, 24 May 2022 11:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653390959
