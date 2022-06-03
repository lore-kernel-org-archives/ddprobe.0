Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AC7EC6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 12:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654258859;
	h=To:Subject:From:Message-Id:Date;
	bh=GWZdsln/oOiwhbi2/C1AMiRX2hzYk+0mFkYM/3f0b9w=;
	b=A0vL4qhQ2kQWY0Lk71gkaaDkznACsChbjjs1aXAXn07aXNaCNj13NV4WnA3m8k+J
	nSVwf2SE1NflR1cyv6fToNstMdlK3f+z5vu0vP7OWvhutTCGWOPvVZjEKNMq+1GEsNi
	5MgCiZSDhvvOXdme6/kA2Au8OI9NXMdh/jCW016Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654258859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GWZdsln/oOiwhbi2/C1AMiRX2hzYk+0mFkYM/3f0b9w=;
	b=V964wH4pEUc8GkBYinpn3N4xq0DsAJ/upf+S8jjhjCBeVdKMtCxdXqroVh/6d//w
	ibAdrg+xasKeyR/vPhUUKn2sMpMiPMDzhaYFOGChr/EjQuO864ldixpU8JXAScfx67h
	7K9O++uY8RB7gXTN08lnJLiDuicxQberfuWKXjb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812982fce5-b6ce3a2a-11b7-4f36-bb1c-26ce7c939f84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e01d25c920c8b090b1f2a8ef280692775d83b5c8aa5a9ec19e1ddaa5f8be227d
Date: Fri, 3 Jun 2022 12:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654258859
