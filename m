Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55D510E2
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 12:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649592958;
	h=To:Subject:From:Message-Id:Date;
	bh=1iJh4UUpq8j1Xk1CUQcDEuN0f68Nzl/RP20lJ3keQ8Q=;
	b=gLeATe2WkyJX089u6IVQReECu6IYBimOU8uOYNOSgwfejsBW6mnsVYox4HXYC5dH
	q83JEme43/obZGoNenpsVW/3RvJKvCHDAB8UbriFwyi19DgI0eP3FYktHx+OZQImi1n
	mswkfATz1cyxcc/9WKCk9r4DI+I/3tsuj3bTqGb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649592958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1iJh4UUpq8j1Xk1CUQcDEuN0f68Nzl/RP20lJ3keQ8Q=;
	b=R1HQLGWHk6tD/oZ9EP0OeFBIbOSzq7zankP0VZZR6Tx6AGskFfQt84SMUcyoy3v+
	r4ZTuuSBnno9KfAI5a27iRC4QqZ6JpAQbAVTzmkx6ikOHeSv1ek7LurI629GTwCppuu
	dmL7zY1bnjnFY4tWfs3ckJGS86X+0DpsTV2GHGhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801366fd10-a2a44698-ad28-443b-a2fe-f6cd99ecdf51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b562016817e2407313faf0cb327d2be4c797b43f75bf0f0a1393a92502be9f4
Date: Sun, 10 Apr 2022 12:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649592958
