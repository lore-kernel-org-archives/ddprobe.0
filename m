Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362A5291C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656083212;
	h=To:Subject:From:Message-Id:Date;
	bh=G5N2Km3A1+A/hqQqkJgzswlYSNYU+R3pQlQceuGD8rE=;
	b=IgMrjQ3FSlqNRpmC9hJLVKItrTkebNTKSpH/LlGDsHD0jjh8jfVUrs8ETLZBV7DK
	vy6e29Gv6xp1LxOHg5ZpS3fUa3pEX9q7BY/4WDrTtUxDdUkhandmktdZUkdaNvpTVdJ
	LFlqzS8bTLDH8Gs1fYIW29SSKP9SwT2/Oa8FEvY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656083212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G5N2Km3A1+A/hqQqkJgzswlYSNYU+R3pQlQceuGD8rE=;
	b=TYR1HJVa13xp/o0n/A32zawa/zbkYfU0rm6RjZDM6GSAzcEe5jSlVfVF7oFFwz35
	fqtxM4alzQejOzBDBpDc+FBs7vghDkNDQcQbOcj7qDyO8HhZib5ZFDC3Z3iIo4fYFad
	PcAEZeYNmX9cK5aBQL5RDE9mCi3irgo9wiHgt6/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196406800-f27fd43b-7b81-48cc-ab26-548f7196dc1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cdce3208964862981f916f03f7060c8a5363895ecf91e1d13d5d1749de9d9e8
Date: Fri, 24 Jun 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656083212
