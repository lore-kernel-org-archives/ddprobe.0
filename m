Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2640A10ED
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 04:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658204212;
	h=To:Subject:From:Message-Id:Date;
	bh=mConIn3tHqljaZHB4l9uyjd+/yjH4W7FkLOMP8S6mcA=;
	b=dHYwieHv0AV2PBgDG1jgXEw6Qgit9LaS/3ZQOvDu1xr0H6NTe21FyFSBfqH3QgqU
	PB/4XZX3EeX62cReBl+8vdUgyBfW+kFmu60GRrEIOxrgbl8sVAc2WSEaQqdmBYPJaBv
	Gm1UEXTt6DujcEo2V4LBrHPg/QPJtl7FVqPY3cis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658204212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mConIn3tHqljaZHB4l9uyjd+/yjH4W7FkLOMP8S6mcA=;
	b=QK3OKQxf6+JvbujD+EUqapLTqBtdIbju5AqzghRKwY9melnYmdsFFJ3RsiHB5UjW
	jfaNZaHvIyJkb/irXW0BWg0oplz6CNGQwqfvRo+UrUkFQ2bBhhO0oUORrvBW4gl4HT6
	WIye69/XoHsrQ/mStLqpdXOPK3evNWSoE7gGeuAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018214ac4c48-1069b478-502b-4fe2-8179-f514daf3186b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca0a9b5be599ccaf64646c20efbfa30d7ea022cd0b7e5f6c797b9bf344c9644d
Date: Tue, 19 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658204212
