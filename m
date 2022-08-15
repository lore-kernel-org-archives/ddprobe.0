Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FF6111E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660603252;
	h=To:Subject:From:Message-Id:Date;
	bh=qfnhXEMStQs/X02lMToYnCZ/AJV1PM8nAz3tPLdHUEY=;
	b=O9bBxzkJk2EaGNYxjlrhkJnynYy8whrbXNIt2mn/oRVYWdiscMaud4flNHzoPE6x
	Vhk5ZK38akDVuLwcwbN4ymws1NtsTzJkOebJ/GybPyHz5/8lbsE81TzkaQ+FvMzHcma
	GoZsqtvkrCbfCPb3LCc1vBb6Mxg2dxgHzNV8Osgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660603252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qfnhXEMStQs/X02lMToYnCZ/AJV1PM8nAz3tPLdHUEY=;
	b=hO/E3nvxOei8kDuFpNftSQ+J2cg7qHdsX7tnu17lFDm2pG3dbymy4txXr/JNPPYg
	AUsB2KN/3k43DsPxYmhdgJrQimGoxL/KegtOmMChRsfsriRzch47N+wQYOJbTCMzauV
	bIkGsTfSJkPYfQAV0mrcyIsmM3N5TxDj+hky9ATM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a3aabf58-a4e612b5-4644-4c62-886b-de4d2a0029cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 907de42a8a886c96f3b32f4f23056a66da5a5c18ef0ca158de90682fda2f8b91
Date: Mon, 15 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660603252
