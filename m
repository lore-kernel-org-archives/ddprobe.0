Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5293C184
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660099252;
	h=To:Subject:From:Message-Id:Date;
	bh=dYTajTIBEKu/tsvNgQ5rLBpZ/bKi1eJBUme5Or1eE3g=;
	b=EVRYxdFlwRE4xnbd1FfcEJK7D5nPR2fIMhCd0UlKE0fFvoi3Jm32Y5LDoW5kxPMf
	kqSGHJSF2B2BSUDBQfO8nCkxlv3+v695+H5mRpCLEjV+5KvP4Cis0rDVosBVcJ73Yko
	2ow/MIOrawB39VH49byHQdXumbGRUD7HM+taErlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660099252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dYTajTIBEKu/tsvNgQ5rLBpZ/bKi1eJBUme5Or1eE3g=;
	b=agviuwK3wOYEk3pvy7ftuoOqa+vlHyg4D1ddjRNL/5r8m7uvqqgC/ObFAxQ1TOD3
	yegXjAF8Ahkhv+P/7qnOtMX6hcadGOtKqaiSLCNEy6C9ycoYLqMufC+YC0KHHJBGlfi
	VWKgxPguzwlWRlEl5Jg7vAO1aht50I1D9ZkIqlsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018285a05160-9f16c76f-de74-4f58-9acb-b6045dc35589-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 067d53f46782225f5d15b046038e38e87ce55a5cf264d409a1371336c4d00416
Date: Wed, 10 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660099252
