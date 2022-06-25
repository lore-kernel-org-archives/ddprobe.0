Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022D67C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656165412;
	h=To:Subject:From:Message-Id:Date;
	bh=5Lm/tA7OqPk1XP9OtesbrRul9MKN4ScqFKmWW1JVE2w=;
	b=Fi9W1cwBZfADQX+JPtZNLsvQSlp+P5UecW6YP8BiByEZaeZcrneLxlXzyiJik5iF
	yHJWdjPw98nC5oNdJwC6Y9BX6Zg/67Bi7QFpAFEePs2WznT0Qyh4AamcZtCrEdHD1vd
	JKly2p7vTBwT3ubonM0uDUmvpB3M76GBJPPHTfN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656165412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Lm/tA7OqPk1XP9OtesbrRul9MKN4ScqFKmWW1JVE2w=;
	b=Ku/2wGv8hZyA7vwgfUAZvT2NEG97vrPi9wlzBqBVFgPXBdgHJRw27Z4ewlJBFmpL
	tgBpY52vKP40hmYSwBOFAD0xyHF2qNF1moXW6yu8DcZNiGLOvOZ7aTVXgnJivCTgx8G
	iCdAAb52c2hh0IwrWkLldtJ4nkaVmoKzhcNA5Zyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b26adf7-1b2899dd-be80-4d40-970c-2a2df3b4b9b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3eb6549c1e1af2bdfa522ed723d70af61b3261e576021dc4968dd257c1696601
Date: Sat, 25 Jun 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656165412
