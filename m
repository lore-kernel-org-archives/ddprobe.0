Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1056123D6
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 10:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652957639;
	h=To:Subject:From:Message-Id:Date;
	bh=wnxucAL6B3PUbMgq2UafVry1Vlyjqk80EwA7u9XoERU=;
	b=lKk4Oj54pMRUawBe24p48yo22SnGtbnqQdSsospSYsL7TxqrX58qrVnsmJ55M5Sd
	MiKM0fCJ42a7+EBTeJazw/VBAMZWLSXBQnOZHRt70F0CqZJcq/4biZtDa1tmJMrhUwa
	ai7YLAKBqK+iMIUHtsBXOJU3gyCGy/HLzva9lK9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652957639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wnxucAL6B3PUbMgq2UafVry1Vlyjqk80EwA7u9XoERU=;
	b=hL2p3PqYY9lz9KZ2Pax6QMVZ9+5wRxl4fgzd7vzeXZWAiBXcPNFAhcAEm6Mmnnw9
	95NuzRhNTD4IHzLQhije0lLaejXUD6RAHBYt7qyOWhDJ5kQbfumheDOFy5LLyh2h3T1
	P7Z29frAm2Pqi/P7iiDqWU3a8JTF/XJiJCT1vZSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dbf3f252-bd3900c7-5baf-4478-bb07-def46160fd32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f671db6743d24d81fb8f9b563d2b5cab3aa3e325e4c0fe36ddba972f919eca9
Date: Thu, 19 May 2022 10:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652957639
