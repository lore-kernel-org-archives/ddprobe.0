Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31089363
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 00:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652574299;
	h=To:Subject:From:Message-Id:Date;
	bh=WYJRvcHt07ttNy+wWEKbesLIN9FkyJgxX4E5Gux1stQ=;
	b=cc9LSf+/f+GjksVSRE+Br1azjH9JrWgov3q5xLAwPpo9Qxdodvewhit3gFTgWH0a
	KOfXRPhFoALl8P1BpCfmUxkadXQ7LHUgrty7xPLpqeBSbcqMflbtv1CuQByJo6gAp1E
	9hl8LhaZTUfXCgL5ZppbNIs5N+S7v/DEpIrtLFPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652574299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WYJRvcHt07ttNy+wWEKbesLIN9FkyJgxX4E5Gux1stQ=;
	b=gEBZmUClh9YE0iVhCcSWaNI2eAXTNg5iVza0BvFSL5sTt+4SJZ0otapJK/Sfq4ui
	WYkAHMgwi2lSMYlFX6qqJO2EOKff+dTbp3kowYxWmwKJ1LSRKkw6AKtGZcgA6hmEJyG
	9UlVI5bV5gQvQfgqPWAHcerfChA2tw0PtWZmebsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c51aa4da-7da20da0-b3a8-4252-a5d2-77244e990622-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f75ce563665cb5247118521203e15cf18cba05cf5cce8b0d209cdee24a1023ad
Date: Sun, 15 May 2022 00:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652574299
