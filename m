Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326DD1FC5
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656773812;
	h=To:Subject:From:Message-Id:Date;
	bh=CS9RwDBfmujPuTPUYaEn+f23jPDqDPElImDHdgohHuA=;
	b=fOlRqy0ByjlFLj02fGh+kzIy9Gxu8/YKm/S0VbmhOSdbKk1u2v7ZwEYO7j/ZJ9Wa
	FiGz1xrFuufrxrEp3AhhX2UCdVPmJp5XoBxnJMZfXbSExkL+o82lY+7LAQ3WlWH0WfR
	RiwxBCCpd9/5JbZj8qCcISYfK85FOw3DI98LSTWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656773812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CS9RwDBfmujPuTPUYaEn+f23jPDqDPElImDHdgohHuA=;
	b=BwTbE6qLAOMC1OYnJKHxZzxUScrhrzhZR6sz18zu2zLcFl1P5038vqFc52YCt1By
	/H19dc85QlnyIGl8d/zpcMuvgxDfqcjI8hGesPQxdgCL2cnrJI/i7SZfRqYZSePTCk9
	Tkuz219KjyOEh70izZW7WKLXvStLpRVH+YDz9Jps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf6a2061-2b322866-0a55-45dd-8863-ff8a402e4be3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1353d5e892e6f5e5cad5e49d8c0e2e25cc7f7d7a27b664d6086bb51c7cd63fd
Date: Sat, 2 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656773812
