Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6D91375
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658756812;
	h=To:Subject:From:Message-Id:Date;
	bh=qjUQDOkLzMb+1cvZILAQ18l1AsOLLDcyjZpJcznvyS0=;
	b=XT/t6s+t7pXLn33hZr8EK4PfNmPayMIhCF9qCDqmzbQxb8BPzQXGzFSTeuwFDvAo
	V+GgDDtKyXnKBzFx50kjKou4C6N23S1obmGtvibVx+a0GrMuAp00VHgXVQWcn0h1G5r
	bdNVu3NAFjX8PqjakzYa1zOWSH8eKKL5k40ht3RU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658756812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qjUQDOkLzMb+1cvZILAQ18l1AsOLLDcyjZpJcznvyS0=;
	b=PcRlp8JLtg113F3x2UuEq+i8Qx7RLQLXkBUxb0AN2eodbPxHY+7KkdsJ4/gOGdR0
	EVBb2BwAEu7cBMBSjzP1UgneO7ISpjkC5tsPFtPQKvjOgKXJ0ins9IfKlqanDU6CLGU
	dDEiAXeUvirklmXu8bEvJTWLtFBQ5G5r856F03lo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182359c4df6-7ce86877-c878-4d0f-a3ad-a0398f0d81b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 281b98c143dc82473254e9dfc7e8a6058b290f94a8861a1794acefa78c9077f3
Date: Mon, 25 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658756812
