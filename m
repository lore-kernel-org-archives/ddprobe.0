Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2B97E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 07:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654156499;
	h=To:Subject:From:Message-Id:Date;
	bh=bOFqAqTyUlr9stZsbrd5aQku2sxSotVyCmG1IIpBAJ8=;
	b=e1pJz3P0y/1gIDZpalBgKkcxLDvauL8LYjki8tgJ173ZHGxLNVjEN7gWGbu91sV7
	70k+xKgfQ5CORWUWu99Gg2gJeDjHce5hwP9tCfbCUP7tQHExuNMjExPKoUFsD06fx/l
	CinoUSTMEWjL57MEhymoOi6zgcxtXU2j5u0enfN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654156499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bOFqAqTyUlr9stZsbrd5aQku2sxSotVyCmG1IIpBAJ8=;
	b=dy9ZXj1oWDeduznQgON2ER/PVt3R0iOK+GwQFfdPU/CP1Y+cuhqpmKXEmDm25k2B
	0IrEXj7Yzo7DCgvnjRtTdssEZUaVbimFsraEusa/UL9Dln6/xn+W3VnJga/kV4jjhBU
	O0b+Uw5LWL3Rmsj/LCAbLSuXf3fux9i+TmQM277E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812369191b-e07ea0a6-e648-4527-bbd5-68b1369462a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 930093374d947909aca33c9cb30fac42cfa548974de7820af36e5355485ab170
Date: Thu, 2 Jun 2022 07:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654156499
