Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE0E225390
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746056994; cv=none; b=KnrKLqDB+ucO1AiQeVItkOZFyvtko1onGNNziToZgHerkdmtGI/eYEtMaOlumTIAN0TgjZYnK2086BjmvKTkJyPgLZdx070JzxRpZ4AQmgXqbE3QnzF1zZzBeTYGK+kkXCNwHCOcGYvrhY+tHxCilRKZ/36jPJUGOzhXN61d7YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746056994; c=relaxed/simple;
	bh=1JwTwLeeHeBYn42eWCpfXqQzwEYP/YdnbZwO4MRYoBU=;
	h=To:Subject:From:Message-Id:Date; b=B2vAkJXvmMoTcxVQUbO8RyAUtnf0+3M032TsOfifcZ9IssB3I1OkoVLwUl+EqOQwP/5UV5WN+vkWMa6H4xgTL+tBQGjD4wchr6QPvovOU8h770uv0yN4Hs7NFsGrTs1cdly7yXssIFgLA3uNqrqdQzeplHzAXtU0p6rrB/YeFmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C78M4cZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C78M4cZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E821C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746056993;
	bh=1JwTwLeeHeBYn42eWCpfXqQzwEYP/YdnbZwO4MRYoBU=;
	h=To:Subject:From:Date:From;
	b=C78M4cZd4BVXegtXPzMKDaL2mwmFo/y3jrLHi7pAeXpYuRD+X/8mj3Awfg84sjiJZ
	 RrUD/z7rFxbMuaeg4mwUhlSNhxyvgsWECPzNZUqpagD61Gmu/R7d6yi6jpnu6P6Mcm
	 y78TU0Ta1Upx+//zqvyBD8VCzUTzq2aPd7aUj6oPfo5fk1a/L9LBmdQCeZ5gv4dvr2
	 ixGJI9k3GJWz9PVYeijV4+IlV6fA+TBiB2mbWAxoblFOPi2D5rsxTqKNCMEnpYXlJc
	 3b8oaDjb9re8BshsNoXC7DrBvPrcJjcvcQrCqmf5gdLTXM5otpiB5USsuz47aDSz6p
	 MgydMHmrw46Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB60C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605699357.19019.13395455510766557551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f20bc7a497952854d039a1062689aa976a700489bba88eb97c43c5dad854de7
Date: Wed, 30 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746056993
