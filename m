Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421F37B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 18:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651258438;
	h=To:Subject:From:Message-Id:Date;
	bh=dD/uVX4TCQSDHPiw/aqDIIEdfpbYqUY1LRxCwYjnERQ=;
	b=FJnSSQ7p8nHtAWQkRb9PKMSHvz0r50NpYSEIRbc8xw3D4aI5PVtb9waq0VhfPLvo
	/wQAjahhslOax7zKoW2LlCXUpHLTeMcijJCiQAF8OvfIu6AyYHOCmTYIpzUN19Vftwq
	a7WImSjnbURRofUTS0y1qutkYwIJqX7SDr663LLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651258438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dD/uVX4TCQSDHPiw/aqDIIEdfpbYqUY1LRxCwYjnERQ=;
	b=XBHkErZoe8gy6PcyXjsc6fx4dlFc/y3IJhUIFsZE7D9j3AXzZXmxumZq6mx7djZn
	XUN2B0EYD1rUk2C33NkyLYop7jzMBqpmfC2jvHZBN6QPy4UFC7p/qd7zYTWRNPB3U1i
	eLKVKn0sWS4hZjWNIu8KSvD+9QAlIAHkj++MRcVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018076ac326c-4182acb5-625e-409f-9cab-74178520c4af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b687e1558d2cd1e8806322965679d0ebe3b7313f90db0fcf10edbcc1b9fd0b5
Date: Fri, 29 Apr 2022 18:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651258438
