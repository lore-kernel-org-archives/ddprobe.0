Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB79B1FB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656004613;
	h=To:Subject:From:Message-Id:Date;
	bh=iGSn/ODMUw8xS+9JxbHQda4dc1D0wi9K45HUVgZbBJI=;
	b=afL0tivW73D9e3k+cXvM6ApyRBodReFIxHl4g9xBq7tg3KKTARxLaQidJ3u4JkWr
	T2P1uP+1YYlFsWRZVR118Y4IrVtEUcc1fH0EViU4GganNtrYLkKEinClOojtZdVltnm
	qsOC6fiBZ/KdFzpj9zjp4UfT1Eqmn8jazO2fmzWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656004613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iGSn/ODMUw8xS+9JxbHQda4dc1D0wi9K45HUVgZbBJI=;
	b=LLMkq9Q8FqYZfrbVlazW7VoHoWmrmuK+t1qz4BqU7Rz3lJhCzXio2+2dmP6f76nv
	VMAihwYF1ShPWzyvVTIl39fAIUxFDuTYoWyluQQ5xrof+073MSYGJzVY9oZP+ojfo3n
	4sbImOe+ejYmHQDVP2dJ7D0fjY9pFUDgj6EVreJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181919110c4-1bd1dd42-c5bf-4cbf-b1a8-1365ad2067c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0a9f8083282c8ca5c09cced8248ed7ddcc49c1b03c5813a41abc9b78dc74d3a
Date: Thu, 23 Jun 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656004612
