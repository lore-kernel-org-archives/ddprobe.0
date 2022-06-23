Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B661C31
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655989012;
	h=To:Subject:From:Message-Id:Date;
	bh=nleTPx0LjikyPEQTU4ncb1GW8rIi531P1JhXPcyERUs=;
	b=g8lzi9tElpuSZp+bWzcKHf0wwJjA9pGvPjSXNdBjgPnFk7wvWZuSnEbbtoIaqB42
	RFhBlYi4/Bpjg15hnUbbI1NvzluIErAorjn0GFSJgymhZm+0dAhOYUWGrjzWCcyEJ0T
	1VkqCKsz+kp6J6/lP+mlkZ6CEdIifB9wFoqzwaiE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655989012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nleTPx0LjikyPEQTU4ncb1GW8rIi531P1JhXPcyERUs=;
	b=K+TNoc1lTkTwvPCpb8xiAkqUFkwaXe+d1UY5clQdHGgOrpQR7/mmNeSWdtwGcUuU
	2wdO+r/P3OyvpAYN1mU/GwQzN5YAEMAfpkiCrzG2gEtvUNVBjTZDfuf8QVWBZLYl3Q5
	VJjTq9Lub1f8wfbZEDs5x0I6sEiEjSrLv3dDlERA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018190a3073a-1143d2c5-f128-4a44-b8cb-992c12177659-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c07e1046bfcce4d401e73e0b3b2bae159e5d1dda85659021482eb680ad0e420a
Date: Thu, 23 Jun 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655989012
