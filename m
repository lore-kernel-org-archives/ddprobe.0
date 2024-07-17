Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4542D17F502
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721227523; cv=none; b=tcv4pvNV9cwR1wPH0tTehzI0Gvh1ccmlAfFGMaGhEC/Qln9iHlYQGNEFFY9GS6izhEVgOahf1qmxOb3UqAjh6eA/amEF+WgMMfAlQT3ONomszE6dmiB0ZSNqyDcKcFfP3MauCqfRpBVxGEDxnCl66sljugZ//l7r2EpB5YMLrDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721227523; c=relaxed/simple;
	bh=rXX01T4+Lz6ul9SM9LBQ5TtzoSLoj5zvQi46oRa/+rg=;
	h=To:Subject:From:Message-Id:Date; b=NEXHJla2n+rW7LkBbpwJ27XYDZbV/vM+xOFDwiYUMcCbvKg/l8K+8jbhBgHHFg2PWGqGDTZgiRW30adjkdebGWmRpSUqfIuHsmsdT9Hz2p8F8PPWN0zZIucbECS696c0CQMiDrJrxK5WTDnsCUM1GNjMPk1we65UNWJLXHkYvpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRU7aQLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRU7aQLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A27C4AF0D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721227522;
	bh=rXX01T4+Lz6ul9SM9LBQ5TtzoSLoj5zvQi46oRa/+rg=;
	h=To:Subject:From:Date:From;
	b=iRU7aQLiIjgP3vMXviaZ6VaTAE0teF84uES9w+02gSggpNBt0o15eU88vsK6r82w+
	 jYZJj/V/a7K8LQNilZSMhRYb7Daru7suF2y6tz1KOVsO/kaiMcDjm5tPwkwY6FIHdK
	 4uK9GjVVm+QTahBCSP0J43o9L2Zedq38TRaVG5tmqgFqC9HW9E/94bVFJxDwQcH+rP
	 qLD1d7x9LD/A+7fW04xDMnA2Xrz3KqA5lVPxZguyxQo2KcF9LDp3voZIH3SvkZTtVZ
	 MJ0blID2wXUEPxveikhHb06Jp3JmEdKatl0FrF5cxhwhk/byZhqiaRg63ULiLPqyIz
	 6/8gm9swl9Ayg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD41CC3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172122752276.8837.16094986503500371458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67997cd5de1fa51bc1c134161486222d3e7477c7d2f9ac72c3c9663b1615d1d5
Date: Wed, 17 Jul 2024 14:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721227522
