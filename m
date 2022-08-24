Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9CB7B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661347853;
	h=To:Subject:From:Message-Id:Date;
	bh=JmLg4t0/P8ES2AJVf/sxd331ikuR+ybUbTnKQoWW95k=;
	b=JHiZfI6CBdOq7fDG9ZGSWM5nSidTIL1OL6txCWyG6DB/Sqn87H18VVj05C0VOq2c
	Fu1a2l06iZWfjGz1IIh4D+ZbQOXIL2BpwiLbpXC/zoNwl36rrlmfo1oPhNweVEVbRJ0
	K6LvNBqR8d7w2LBECLu07GSK6ugY0fA65pVksG8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661347853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JmLg4t0/P8ES2AJVf/sxd331ikuR+ybUbTnKQoWW95k=;
	b=EZ7OlAwc4/k8BQ93jM0zW/o4+D9K795XB1P9MIBoyGTJdR+onc3d8SpZoRBhifrx
	mRJ9PSjjiECUe11i8u3xetJRk2vzugJF5J92vDVp974cA4klmczxbgMQla6n56IziqX
	HSgDdGRDkzMZISpttbmLDAnfOmh/8izVXfDOOd1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d00c7109-99beef58-8d14-490c-8c12-cfd478007d91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b350d24cd1f169d20a1e7421b415ee43936e613b0bea602e7954dc26857fde5f
Date: Wed, 24 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661347852
