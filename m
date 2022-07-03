Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042341FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656822412;
	h=To:Subject:From:Message-Id:Date;
	bh=f23lomb7XaRXq58XaZ+e7HqLv/5GWBIyntw/t/kGZrk=;
	b=R9BU+OcAnP3C6D3Kp8gxgxM8RW12SMDS4VS4Zq4csPs3TTFnB3s1rq+spH0fj2yS
	zJlEb/4Vczh670AwOq2KbBkxP32MLsEa/RXao8Txmd9OHiM/hOM0iG7S6+eyMMtJNze
	ZIj7q17022I3Nhv96T1UzdyrMXJIu3kMeuEdUCws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656822412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f23lomb7XaRXq58XaZ+e7HqLv/5GWBIyntw/t/kGZrk=;
	b=SBFT8RhnfNMW0xXBQziLso82aLw37RBa4eU6WhDfllldhcBMcRajMrNHfq7Y78js
	90eNx0ymSM1AzimFcXNeaMLbGOqZh/b7qDsh5ZnJCrOPo8Spy4oW3K4C3AdHd3qQIsN
	iHtYEoioiN3GbTDfkRvamcIXTJA3ifIHvJTG6tWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c24fb422-ceca3bd8-389f-4857-a6a4-5dacfe8f9b98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a86b346779ab4fc424135ca3f2018198bc27e50064adffaab21ad5e6e3a93c44
Date: Sun, 3 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656822412
