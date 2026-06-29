Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540CC218845
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782706714; cv=none; b=BuAn25NL3XB4Y9KPucih+/54J3Z6YTc6ic7EHymlq2vsZMRKCK9RamwErqzNE73vv/E5ImnFJ7rEKWFeXujZJekPpTuVol7S3v2E3qbOryl2pKUyX+3m25t+iMMwLuUmq6EAKxQo/AxZc46My2QD9NoaY8eagFT1WUzU6xDA2ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782706714; c=relaxed/simple;
	bh=ksqYRMoC4fJFEUMBd5flnTLyCfChxIQzsFUT8p2Gt2s=;
	h=To:Subject:From:Message-Id:Date; b=kp+DxmO7BwatXzEsNf36fX2wMvzlJF5f2ws02AWhTIaph2KJ08f9lX6j3n1mIbcbgf4EJxA3ftHKT42wLv91kFcBFT8mlJawjEIb1janNCoB3xSkQJ4LH3hIKeJkP4lwRZl/bq0Dou7HFWF1/jcz6cA+OSuoelM4D+FHSgrzICU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvUdFkSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvUdFkSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C629DC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782706713;
	bh=ksqYRMoC4fJFEUMBd5flnTLyCfChxIQzsFUT8p2Gt2s=;
	h=To:Subject:From:Date:From;
	b=MvUdFkSiRzk3lCbpwhAiPjhiaXIuaXdptdF6ZhAc3+1C8qMV1LDyqPLdaf2YMUqZh
	 5zwHO06knSevOaTI0Y1DSZ4PlH/3tHx6X/gIIUroC6fXRoVhKXsgX+QRgxcf6ZgN8d
	 /OxW6LMM1GW3JnQx3/3SCmZ8mVRlt/+sj8ocESFdnfCRuGliixcHm+Yo7nDZu0HWTp
	 94WUhHlzVEQN2QbgU6pQax7alibPQOqpgRm/Dow3rfV5pEbxhGRJO+CB88Aq+gP9dT
	 Gn87/lKQtdEgJykERt8QF9AEOPnMbFxuybAWj9QjauE3y5BQWpbzpmgbZ08KlDnhqB
	 Glftl4KvpG7HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1C5C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270671368.27572.5981101242777599871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6b2cc538709d27fbc57f76ccbda78415a0e2644a9e1c7e4f9b19d7b08e1551
Date: Mon, 29 Jun 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782706713
