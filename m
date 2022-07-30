Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F61029B0
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659189052;
	h=To:Subject:From:Message-Id:Date;
	bh=IV+ig50Pk/b7zEOG1nGe99PIK735oiPRUqm9x5yvCjo=;
	b=gTO9rwLTnhNrNJjiAOur7smdjyi5GLlOYC3ne+zv9yVX//cRkUJ22LBWmcPmi0Ri
	EWwabFH7rw45RhBF+Y6sS0M3CcoMuh1fWOqg22eT3aOoEmhCc4UVjd+q2YrwmSbrrrE
	WRMjm4LBiAD8DxuRxmlRAW1FFnp6DDpzuV5fkjE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659189052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IV+ig50Pk/b7zEOG1nGe99PIK735oiPRUqm9x5yvCjo=;
	b=IGwWHrKBhFobKiOJbpyKl+YClHldNDIdE6vYHIlidzvZGFdcOCWmCaeuMkVK/xb+
	oA9b331llqwUftkqxi5uMs66Tj2p0GXDG4t4Tzm8aNQDoXJg+1k7Km8mzhGSxE5+bF0
	NVt9qcWV2o8nUnVNzJ/Cd2EnGgs/CtVa22U226Y4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f5fc50c-bedc4fff-5178-4679-aebc-341f7bb20647-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a52aa1e8d65083154a8c43116f3b139d279590844a75bc07f0ba693353c1190
Date: Sat, 30 Jul 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659189052
