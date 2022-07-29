Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B5F2F22
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659106252;
	h=To:Subject:From:Message-Id:Date;
	bh=zXk/xpd0zhaqkN6X2nV9EnOYq8AswAjCESW14e+UQHc=;
	b=iAx/DRLZXeNs/Yi9rS0gi7Ko5sNNVIO35KcH/h7y1Hp6SH1mFuAvtkCJ5hIkJasM
	apneKa2xsaaNCwYFelNWeshp/8uXrXNiwy++8ZqoFeMZnKV9z4s/i7cKTsYPrnZhD/1
	Yjh/LJaLSx55cMUcbMWlddmKAMGO5R+rKs0+27FA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659106252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zXk/xpd0zhaqkN6X2nV9EnOYq8AswAjCESW14e+UQHc=;
	b=ko4NNZ3r62nFcgiMQeWAHxnI3kkeS5+K6h9BQ9O3APfQC0bzn42ZXJOVeKwOhGRB
	tviRNriYGZEueTHFQBk0C2ds+eVyjhiGVnfFaH84OXYT26C5wUp86ygm+9qtYQf/3li
	BhPqOe8PGvliuqZwkq85SRU4zWJhosir9yNuqRPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a7056dd-9b78b748-c68e-4b4c-87e5-ac9fdb5240e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f477fd790416534296ec6048c8383abd389f935d336ef829f7099e7136df3f9
Date: Fri, 29 Jul 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659106252
