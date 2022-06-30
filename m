Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04493EBB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656580012;
	h=To:Subject:From:Message-Id:Date;
	bh=NDUai3Wr5H/1AK+Gv6sU65eLInhnfmHGd0KrttitLt4=;
	b=Y7zr+H8rAOo2mpD8MpI78WiwCmZ40KMwCwENe2/QiBt8o9JMPjJM9PITDRV66SWh
	i/WRVJNXjmQ7ytgfOw2zzRKWocY57cNpKnVCkz3D+LcsMMwz+d0KnKcvL4fFvK6ikhq
	BepduljwMku1FZvHHfUQdvUzpbEHAV18v5dIG1sk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656580012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NDUai3Wr5H/1AK+Gv6sU65eLInhnfmHGd0KrttitLt4=;
	b=ezr5CHbIsXiT14cWfCssG89s7hq8VWNXcIqU50eSTeuJuCldtBLf3MG4Ncic+n7b
	cXnLCON9re4ucdO386jMaQ8cNlpfUnzvVPuWVfjyfQymQnjeB43wlDiLJxT0BRw17xw
	YsiACH2ooyyZNgqj74sING6RjtdebV47C0lx0qf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3dcf8f0-5b7cdbd6-728e-4687-b48a-afaaa4b03d6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 602975efcc8a3c503d0effdb19f03c184e75aed1e5141fc418876ba0540d1620
Date: Thu, 30 Jun 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656580012
