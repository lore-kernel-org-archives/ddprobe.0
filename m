Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8190B17FF
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660905652;
	h=To:Subject:From:Message-Id:Date;
	bh=V2pYBP5lyL1tt7CfuJU0i6CU1qLg2yrMYvx6ywhnD9I=;
	b=WrSmnRBWavbkRqQ/XjSU7/dOTvhElK6YZS8TTjiqfwb6jS1NgOnij5G+0M/BV8Q4
	E9t4E82uO+8e+UYUv6VcZnkFiFcgFlmTr6/TjasilkGJAGFgeITm/d2jY1pK699cFIE
	9saPJy72wQkUvhfR+84D9XJhiVhrdZo22zJhl6cY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660905652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V2pYBP5lyL1tt7CfuJU0i6CU1qLg2yrMYvx6ywhnD9I=;
	b=jIVBD7j05yglgFPoQZX9U1YXLf5Kt+yM9/J6bb0X+3SxurdArMKflpbmARAoIuS4
	zvCjpeSqR0/faAKEkCyJJOMnUpNLoy7Ax02VpkhZC30JnLDPq7QHhSMny2LuUCC3qOI
	ewk1sVVCVP926Ai10sxsCQeW058dHGjpjbvIIqtI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5b10224-26853a86-4e27-47a6-ac12-a784615ca439-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5816109351fe326044b63d652318f87b860ee85d0c782eba1d88ca4cd89b602
Date: Fri, 19 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660905652
