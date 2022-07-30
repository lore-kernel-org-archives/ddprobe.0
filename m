Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8FE23A4
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659159652;
	h=To:Subject:From:Message-Id:Date;
	bh=r4zXGzKoon1GiLHnEeqcHcAqxfDjOFoGf3DCTLvR704=;
	b=kz1ZcqM3IXHkWHY+9gBoazEmtVW0uwIg8FjyTOX8gW6dtRLiwg08tf0dPyo24mOL
	Waz4ZdSgpR1vewShpWza6WMCkpdfkHFnwc0tzGKWChZuBlVOYLA49V7x8SHOws/w/j7
	YydK+ha2gcSKYkvSRJSlmiYMW7qt/afw5daBegrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659159652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r4zXGzKoon1GiLHnEeqcHcAqxfDjOFoGf3DCTLvR704=;
	b=FAqD4kZaigvmXDO7jccu2dUaqA12z11lTWIhCWmRZpZ/C81+Abrm2T/TKhbd0c4j
	B23gwcGk5UU6DPEQYV5Gv/Ycg453IRMJimluMD3H0DxQQroW5uXiKJLjpPFcJnF5qk+
	Wmxq/CoN4in5VE1y3LQCfYC7rZWs9WTXp1bT24R0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824d9f28f7-300b2dad-7cda-42bb-9639-974e49e99408-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 719ee04240bef037f7f111ea143258450786d22ea83cac530018faeb44dfe829
Date: Sat, 30 Jul 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659159652
