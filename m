Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0170340A73
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762964394; cv=none; b=exSFau4qdrdm8WKpaQnRpZ12TOZwPsVpd1l/+3xCXoi4albdLCT0rtDEaiy1RqU1PlLguMNLqwGq9OzYW40gkVlmbM5oJXAmMy0ZXKo8gkzFUngt3ZqNEY+6uXLWMiyzuc2LsrKp9n62W/qj4yCG+Mq1iuWTRBnCc3jqcFX0PgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762964394; c=relaxed/simple;
	bh=feaLlH9IXBrR8Zd5qhzwwfrpCUml0lC/igSAI8Vz9cM=;
	h=To:Subject:From:Message-Id:Date; b=EhtbTliaVpSO0mx2Ck2WbnR+hIRB/w/nGxq4EL6VJpma7i855JfTmI4RuMCbWtXM9ow7otv9nImB9s0ZPKRbsFLJhs50zF68lNIp1YrY9gnSLlOhoIBR0Ja5CYzNc/MogTNoLM3ZJtqMZTg/DjQcuBX5bvM7XGHlriCbkC3+Mgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5whOShZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5whOShZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B666BC19421
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762964393;
	bh=feaLlH9IXBrR8Zd5qhzwwfrpCUml0lC/igSAI8Vz9cM=;
	h=To:Subject:From:Date:From;
	b=q5whOShZBmVwd1zRIO1dONeaiB7Txyk4lxO3nvfcN0pG6eqSn7UsVfvsle38bD4bQ
	 7BmHc+xFz8+QJbgF4B45rFdLcVu6Wg074prB/pl2XqqLcCNW2Zv30cN34UPgCWjDCg
	 YYxPd6NWIirhMuxraKpGxxMbjcMCY4gXKi9HN5JR9VkwrovQMpiYrVpG55mf+GtyHr
	 MV1h4IdsZoRxtLhJlfOjKeerVaOhkdrJqI4P3mDwzgSvHAikGNQxPnVOYzkdRDIbNQ
	 ybllvMLNqqfoSKrz8GtT9liu1Qv3p+xqiyL+ip/mJLo37RjEuHqRiKb//RU6wfb06E
	 m07juRFotjwFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB0FCD3421
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296439364.32590.6022043417754691094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eaad2030fc068add5ae1456d39846d13e202b1d76efbdc240cadc8e19f950ee
Date: Wed, 12 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762964393
