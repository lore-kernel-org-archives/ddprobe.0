Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E5B372
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658726812;
	h=To:Subject:From:Message-Id:Date;
	bh=hFQDADIC3qY6Hs6pzVfdkNgXmRvpZ23eLwkD3H05hnk=;
	b=LTCu0SxXquWwSG5MQv7VVjN6Cpig8G6qB9sLBwtn3eNaAOXeULiHVgjjX2B6BJWS
	Bpcw0ZNuiPEg3900PDh3g19NMSCN3UwHCfsgP/sx/nfzmA9yXmabEp5J0/tqZX3mp0r
	Nl4n737tHOLj3iuHtlSF3JNteHtnznPcSIpgQU0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658726812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hFQDADIC3qY6Hs6pzVfdkNgXmRvpZ23eLwkD3H05hnk=;
	b=dfOkQl/8TseFhRzoLtf4YOiOAl4UCTyCIqU6s3qh7aSxw+qBkXKs0/9jMB3++uXr
	m530ePao+Q1WTAi5W4t+QWFlcLzTFftVNuhfYhPfxq1EG2dpnAzV7nRdHlZmL31vOzq
	AEIY3tsaCyrA+BYE0VNfKQzeqpbQaDADdl3LTCBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018233d28bc2-3f2f2cea-11c1-487c-9987-484aee232b67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a8dd1fc3025843774eb502b4f4c384ae80e49269fa0afadb89ef9d790c5488e
Date: Mon, 25 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658726812
