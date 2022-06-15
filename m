Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBEA7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 19:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655321939;
	h=To:Subject:From:Message-Id:Date;
	bh=EJhhbr1fIAzP6jJVQsqdtmWFhHIY7sQTKfSAhM+Alb0=;
	b=TSAfu6j4/MejKqOcYk7J69slZDToUw1JRqNyaH8SrqYn5OsREhu0ZCO18dK9nUEw
	edQF3w9pStIaLq8KdQolyXbSGsxSw6VPGgizNSl3n10UbeXE9Y/tILwGyxq+gjRESaj
	RgXhyxf0IHbWFE4HFSPXP6ycujja1OjWmhZoEFmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655321939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EJhhbr1fIAzP6jJVQsqdtmWFhHIY7sQTKfSAhM+Alb0=;
	b=gzqUitr34+jU7yaZGOcqNlIC++8D0cyACUfFox/nwA5x6La712lhtfkTDQp3Lkm/
	2/PmMfP+M9JxC8iWSUswIBtKpDcIEqWejkXc4xHs7cLv3/iE35YrAkamIBlkRnbwB70
	eT7tkZyPv9ypCoNS/ShsqfCZRUjtP0o+DTiqksBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168e04d5f-3a8ec96e-d45e-4b34-95c4-6517210c94e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f311cc3a45baf32c4db7e7a94bd7d01abe3ec78868b5ed48255a1ef9ca029ce
Date: Wed, 15 Jun 2022 19:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655321939
