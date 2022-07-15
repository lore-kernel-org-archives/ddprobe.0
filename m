Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E2317F3
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 05:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657864612;
	h=To:Subject:From:Message-Id:Date;
	bh=ucOczFYPNTgqRsSywRC+7bRYjkBQJ+CIWK5ezD4jJMs=;
	b=IdGQ+7tKOr+7yiND4p1zSn3gPDzqkLXUg2PGDxoGD0Mo27/6Gs6zWGEZ1s4qNBPj
	syKIBclCamsEiZedMO3VGL4u1PFVUnUGwyx0g65SMlbT8bm5lwcV2RKH6cOKPg2QgP7
	7ur611x46yACDYIZXJEGt13TOWliBLlobtd48+Z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657864612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ucOczFYPNTgqRsSywRC+7bRYjkBQJ+CIWK5ezD4jJMs=;
	b=TLQSRMgpXXFUPDP6fgrYG/GV9wyzxo2CggyZm2oy0g3jnS5GJlD8KUAxVxS21IhD
	Ds2xveBset257V9j0j8OsXHC47d6FzItY6IHLHlA+3MgJBVtpaE/JX25tUKKLy03UqA
	ZzVn1TJeRvUZiSRKe3zd2LLrMMoE9ChNKqi9vICo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182006e69af-2455d67c-c063-49e1-b099-078201a187bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4275c5d449279a07003da89394090ef07206bad3b2ab707998429c5765f1c987
Date: Fri, 15 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657864612
