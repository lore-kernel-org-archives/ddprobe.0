Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484497F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659477652;
	h=To:Subject:From:Message-Id:Date;
	bh=cPWeN9e1fgrLTtbvn11i+MpCKFyT6HjSQlozJI9g4Lc=;
	b=cg1YuTT0z3Vi5VwQ2iQc60z8lqFSLyAre+IcUHQXWUlbvi1XsE2bzc0RemruyaOo
	LZVHjzTRQctiBjHz0b66PsuXJ5SGZrcgOwDkuVaGYt1B3xuXrgt2sbebqG7KiDXVS52
	BZjN1B6GZv8a7wLlc9GxSBCh+Sa770/gwn/iYRuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659477652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cPWeN9e1fgrLTtbvn11i+MpCKFyT6HjSQlozJI9g4Lc=;
	b=IXCQSWgsFeUu5lyWQrY3cXgWQ1pmQfnOAY5irI4BYl08AwV5/YgvI8NdmwdvqQzP
	9wwYGXXj2IiJOLdfwRdL02PqJZvD4/68g8wKCs6ez0+KbGe63W7aQq5DDw1UFdHXMJA
	IkX1kjx7BXAUyjtBZ3sDCx2FqfEEvqEAbD9I1Eik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018260937490-eb12f14e-8617-405d-a762-a9584f01327a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b794d17c8b216ebf5967833ea7175e621f3ef9af228d0ae69d6c1040bfbd4e2
Date: Tue, 2 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659477652
