Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DB37C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 01:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656035212;
	h=To:Subject:From:Message-Id:Date;
	bh=xNFYGWb43hTL3eIi99J0TzYoe5f/EfAHSe9rvRzOEH4=;
	b=ex8eqS2MAw1nRuh/jBWcMoYinf/zD4sZ6AD90NS04vP4oSfOXHhcw1mydWQaW6wf
	Z5BJlbLuBwkgg9O3Y4oWovsyzZNp8jMiKO8TI0wGvumUt/uaa5n4/iz0BrV3VvgE3Ky
	1/OmlXeLA9+TDE71Cnmb0KvNE4OFp9UXSP8NYhd0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656035212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xNFYGWb43hTL3eIi99J0TzYoe5f/EfAHSe9rvRzOEH4=;
	b=XS7ronjdVEy02sph7vqluuwSb+ntJ1iLlregBQNjxilEx229cDK6MVWYAGOnBBua
	JuBJT4PY8AnlA3OT/2pqocKV+1o8NXiqPGO7y0kRpM2W9bBFXUTo2mM86x5lGviRBgE
	7PHvNF7Lj1mRGKORF3oyWzTMNS6Lhv5BJ/Sm2/WQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819363fc02-c7f36290-970f-4014-a91d-ed50707e7cfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2544cdab721d92378c1c7655afa5dbb2ee30f77b9bbd17a51990a0f247788db
Date: Fri, 24 Jun 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656035212
