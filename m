Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501AE296BBC
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785531634; cv=none; b=jE8rXmPTKYYezivXmf+miWShhC8uWzU1EIX1M6+ZYZ1wcCxBoR1A15gzqSjRi+mU1b/+Xk1hJ2tVr6Vd8OKTedhN8S99w/fCl5JLm+QXiITorANj0E6lQortss8Nq4AdEc55suN9deBnbRMr297RTuv0EdtBayEgQQd+QiCJUPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785531634; c=relaxed/simple;
	bh=Dyqu4Z6Pnzexgf18nqTGZsUVQrDEfR/eXxMqLpXdGKo=;
	h=To:Subject:From:Message-Id:Date; b=Cz3CMtEUR2yzWqkmcciCBDcJTIZa4Ia4ilN9mSjiptmi0pBJDkWCw/LIdw36l4oaIA9p0j7Sls33iOzsGOnPSbDUrFCKQUZJM4Op7ZkcGeRdBU5WYYQMVI+HtjA8HyP8GbgVSGJojYrJZbUtWDKiUHJEwgLR0jRcaYji1Nd8iQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsJGQAyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsJGQAyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE5BC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785531633;
	bh=Dyqu4Z6Pnzexgf18nqTGZsUVQrDEfR/eXxMqLpXdGKo=;
	h=To:Subject:From:Date:From;
	b=YsJGQAyrO8gbmtTN33uvgPFchGmqCNPviOMeCljKEObLTxQqS7crrDUim/jMWNKZP
	 Q6BKou+JvRVirYAOTnHi8pGYH54CibY7xssv1j7Gw+Mjkv2hpZYZXEbRJZ3+SwfPIm
	 0Xv4B0YzTo4SGtqbCVdpp5y4G6nMMF1btS8eQquAK2PF/9BrnXqXelLx9UrDRcYkGY
	 mmRSzGfSb5LFKUqd6OWSX1BLrFQH+Vduwf9SWrAImR0MkhdVvxaR7ms4s4/ZThcAfE
	 k1qTj+FmwqF3+WwZoJi9RDcRe5T7kEKFzOFeY6UM65vF8xXhPL2moaWnlH7Llg4c7I
	 nsK3ec5bgFY/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C18C55174
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553163368.25090.1465532027458885009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170b16afee5488538bc19f308854fcc7784cf6f45c643090cb8e391ec9e27561
Date: Fri, 31 Jul 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785531633
