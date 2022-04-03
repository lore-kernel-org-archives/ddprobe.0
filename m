Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5588186A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 01:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648948618;
	h=To:Subject:From:Message-Id:Date;
	bh=+z/rUBZlhs2oqJgHqKD0oDiVt3LACMNE2kuqHJeuzmg=;
	b=XfIkAbkSjs73d///RDVUFJWRe0fo0l5ptHRY9+HI1jT4B+cVUPEfTEgewxi7jnxT
	lS61EmROr4D5K8LhL0JNCeR+i5iuDi9SVrHFNSSwwR8hW3fhy6qKwegNQvkaAbMqJbY
	zKXxtQiB65SDgdrXNwVKfqb9dhFmAhWYDTasqamA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648948618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+z/rUBZlhs2oqJgHqKD0oDiVt3LACMNE2kuqHJeuzmg=;
	b=D8ATUDKMmqtyufvP13KfCVYISwquIJYWD00uUGG37QlutQVNdm65TxYwqE7Jap1a
	hYqO/zWUg/GLhtKfnsYZz/ej4WTA+hXURK2HqTaJwrRnwohbL2997brsroVcJ1AjjGh
	a3BHKFEqrch/woXm1YTiD35f4aMECF3tgOfVmlFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fecff2428-1c354025-2e02-4a0d-864c-daa9c46d3222-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15a3407d186b4224efa39ac1684ae386a9063832c3877d42744524c5342ce8a7
Date: Sun, 3 Apr 2022 01:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648948618
