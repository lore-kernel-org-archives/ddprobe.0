Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694D1137B
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659010852;
	h=To:Subject:From:Message-Id:Date;
	bh=h2T1Kra+yE9bD9BTv7GZ2uoiMTWfcUVVoj2S0Ddnemo=;
	b=Se5M9vUaRfs0nYOeym3kWeYR7iAjuE9Cvwgfw+bSPb9+MMX7SS8LFWBdr+Hto5lf
	tVDAeR6uHQyzuzNeMHavu4WnAEE0mMt5gwWMlu5O2VK7HptJKkIe3rk8fdQUez4582r
	HunAb0wLhEJivo9rh3rNdWkZTu/jPfB8OW/VVvbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659010852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h2T1Kra+yE9bD9BTv7GZ2uoiMTWfcUVVoj2S0Ddnemo=;
	b=Sj0RQBK9pDCG36zU7qDFgMfmi5Y7oKaHI3wy3o6Wr6XXieN2A1fTVyBuqoGKAsJS
	aQOggSnZp+06HotC5LAw4yo27S/Ekz3NltBB/gQdMe+wF+sX+X3r4r05f622XaKGnLN
	lpwu2SfI6XxP/T4Aqt3HlEZzurZgGrPkKaoJ2hHs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244c0a6cc-61527dcf-aa33-48af-8c39-854eccb29d77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0fd0842f21bf2b39038b7b5f8b2e588d90b1926808077f807a95ec8d8b8fdd6
Date: Thu, 28 Jul 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659010852
