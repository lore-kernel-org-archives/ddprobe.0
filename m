Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A037B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 02:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655520839;
	h=To:Subject:From:Message-Id:Date;
	bh=kaVBPIXWGESg457dFIXB0ogOqx1B87RMfVO9UVyW9KM=;
	b=jAEqzCTbRE90qmTyhRUTqjAXeMOT9YnwPQ1pt8Qm78LHJzOCTWqX4+jfeBK2LuG9
	lXU0OuaVeynKnipxQLn6mNzpzogxVcLUdwiXQHdpyJeEb54GBRYQH9PW8ADSBm0zifC
	3rUaKYvSa89zzk4Fcxq3YF2QP2oxKJ/XJZnZ4G5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655520839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kaVBPIXWGESg457dFIXB0ogOqx1B87RMfVO9UVyW9KM=;
	b=X/VU/aQWIIhjix1zszL7qs2ojRY0GIBvzhoa+/BRRGtlsE16tdaZNIwVXga138en
	U16ydjIfvUpiND63ToIN3XkS+UlQyCJKiNeCffhA94SY7iNU1bEuIgVh6gEpB4ErZ98
	Pa2Rq9VxrYK6fmVrvPEY2Rg0/pkZrahRQUl8/Pjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018174bb467e-d4833a2f-0d62-402a-b739-7aa1ac110626-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2fa22ecca34b8c4df74677bc62158e831715574b6c920b8a3204fd40a4a02cb
Date: Sat, 18 Jun 2022 02:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655520839
