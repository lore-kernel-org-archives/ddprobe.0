Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A46BB1854
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 18:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652811000;
	h=To:Subject:From:Message-Id:Date;
	bh=1vZYVb0FGlpHQN8L435Uz4cOjdhwl1FcjiDUhhYUnPc=;
	b=PBf4Hv9x02pqpVTE5UrLzkkGRmrHng5fmVZmRtZmIFFaCV8ZTmKrdgLOuhJK/V+8
	WntOp3crDEUHeWN0qsRSbdXtUWImpOTOjmiDtOTl/lQ0Uy5/225KeX6cyjsT+ErCkk6
	0UwjqUq3/R8keqK3VVs5vXv3zkDIt6w6VaXKrx8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652811000;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1vZYVb0FGlpHQN8L435Uz4cOjdhwl1FcjiDUhhYUnPc=;
	b=R1R0gcO6h5+6ZS5WQMrSb5eN8BEloFslXiB4utMugPLHPTPMNG0kL7FKEJGGWcwa
	iG2yNxJI9aJINUDzbR5JPmIOaHIge2asPf0vnO5ey65VhcrNb0dX5+6MIom9oIHjJ0b
	AqAhLAYNes0EsJpDjjhsnGeBUslcPqKBNcrytLB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d33665d8-4b484630-9511-4edf-8ac0-a1c1f2d9bc02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48d0ef9d4295e34889309805c6e7c5c75084dbc2f6a73f288dd24678aa913967
Date: Tue, 17 May 2022 18:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652810999
