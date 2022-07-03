Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A2A23A6
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656837412;
	h=To:Subject:From:Message-Id:Date;
	bh=LgCBhf+armOum8bm46wZOFH4xbMrasXRs5Vo4eCPgqY=;
	b=HSWZElpP/n8+WYA+0lTXxZWUaBaLPSWuu2ZIk5mK5OJo1/r/ZfNrCV9VGBCedQhY
	5sMH7qNdsls7CNh7lC602uYzyX5dlAgp6qwfrIv0Es23UVnORnEVFknr/tbpp6caIYz
	cjaKNfMRl3EyQx6C81+cbESaS6mYoW3ka7fJoMO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656837412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LgCBhf+armOum8bm46wZOFH4xbMrasXRs5Vo4eCPgqY=;
	b=V/326B/KNnOqb4eW6qWn2OgHFX5dWU4ksA9TFB35vS+QcTfW6LefGeMs7Ba8K/Uq
	3zQFxVq5O6Tt27UswM9+2hHQbtzMEcJSDAgU1UQPM0CiL18SPVoCIE8jgLuHZUFLaxI
	7Z6zmQZP2QVx1XQB9BFDaTbjb1NxZ4D9q2hkG948=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3349614-7f61313e-5eaf-4a69-b20e-e67c12fde9f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5920766d87f929b30d2504c876130750e925f172a0ebf9c9697b552061af54c6
Date: Sun, 3 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656837412
