Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B784184E
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 21:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653515339;
	h=To:Subject:From:Message-Id:Date;
	bh=/Cidx3p4/W9iEor05rxuknNwMyItqUUZt0jE1NH7GbM=;
	b=fdB0pKAnyGHOfPe4rz6m33/OKMphrHZM6HngXIjcA/C5eBqjoEpF0OowC3Cc15Pv
	EaI7pmIIQ+B/fI8oOq0ahPLxJUnjazz77Q3wP8895rHJKSnXl8zYqSWA3crwZvGVFAV
	ohRz8dY+ABrvN6FOQa7z3c1paBIU8I+qYhX3+vso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653515339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Cidx3p4/W9iEor05rxuknNwMyItqUUZt0jE1NH7GbM=;
	b=GOqlkIffx176Tg1ydbyFutV0kMk56uTSDVvlRdkeYaoc01Ldk7g/Jnf6UrsQ/9Bb
	wTUkxBjEGgMygEtrkmV7UJPDmfnPqUf+uexsmDKJn5e7Hq+pFQUaWyv3ieD/IsZNejd
	4yiL90kfDP1Qb5x83b7/HaRnlhq4naGkKg3kEgj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd31c625-5d35340e-69ce-484e-b6d5-49ccc0e50dd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcf83e072382b656c1d95a9809f109917029662ddde92231accda3d256422d6f
Date: Wed, 25 May 2022 21:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653515339
