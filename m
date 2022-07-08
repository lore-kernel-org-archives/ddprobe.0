Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343B0635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657249012;
	h=To:Subject:From:Message-Id:Date;
	bh=2F3Ch8yxgY8T3CNa4LAkuQK453nbXwbnRcuXiB8dTco=;
	b=SBTMuHW6k7031vWNhxO04TT+GQ8kqdBT75iTUP1hwE1Ej72ceI2OzZ64NUtNrlpA
	WtvSnEl7I+QKMjQIbilwoomRcS4/LFQowslnDE63xST8zHZY3vkOtUMsDDQe4wD0GkO
	RmH7FMYvOD8WW5a8Krn9hgT5wPBmUQDI4p7T4RXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657249012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2F3Ch8yxgY8T3CNa4LAkuQK453nbXwbnRcuXiB8dTco=;
	b=EAoNUrgemP9I3tZgOX52VLsB7j0/HKjYAMB4sHzGXnvS6XKJJkSo6HFesx0DQQZu
	nwk6n7u99NbufJejy7m9tzmQRkTVPtcF2N063x1vHN/hEaW4kRQFf0l5SwI5yLBYh4o
	ufHNcIvjWRYjKjntDfEXlzSul2GIViTakX7BuA/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dbbd1a77-e08503d3-1ed3-48fe-b95c-f47549294c12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db7b6799d7d077b2a94cc61287aa025658dbbcd76e75b8967bf7c4285d372a17
Date: Fri, 8 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657249012
