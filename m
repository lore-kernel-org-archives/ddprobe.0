Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C0C1119A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734204954; cv=none; b=PtoturDkCbBA5rjRwnR3pbS+v9kf/2ix5v6G2LkPV9FrceEYuZxyPngjGnAbHnoeRMHe7H8HvS2CXgPAorjGcGMrgglkYhyWftVY4KTiar7XJZRWBmYlJwPnwlnFF5a311TlHzaeFGD9gnhl0DGm546tSrl2qmnIf60P/1gbVE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734204954; c=relaxed/simple;
	bh=XRR4wnTORZ4j1Q7hme4Dra2QUo4QZNYsQcXDWlxgCUc=;
	h=To:Subject:From:Message-Id:Date; b=DYMl51OunUNnuuqj988tHT0xAl9iGV3fD6OvtBhZsY40s2RtymbmwObEX3nGN2NnuO0kyx0NWaUX7+rOKJ7SAV5wJtl2BeR/uCN1x/ouYprTZcffdnI8Ue15PrWK/dDqieXnddW5LBFMaXtWF9q7hmw2B2hNfRaCqox3MllkTTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnsbxKbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnsbxKbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BDEC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734204953;
	bh=XRR4wnTORZ4j1Q7hme4Dra2QUo4QZNYsQcXDWlxgCUc=;
	h=To:Subject:From:Date:From;
	b=RnsbxKbqf7EQQ4CxgTjrUPJg4Dc5kJUdnSSk5t3+xS1OOROJn7bqIxGH8C0yodbcs
	 1iTUDjWJDPE7lb8NJPjFqY4eyUQa1BupaBBWCs178+itiqjqXOAChX+3Gia7nR3FDv
	 etQ8mU3TFHJIBQJN5R9zzG9b60Lo8IfOM8DZtGty9DGKmUEBp9/LbvQSFoQ868VUVB
	 lBdJBi+2FOJz09sT1Rl5XR/qfYT8zSiEgFfFfNPo26ZR4XW++XRrzHzfabO3NGuQDu
	 vGgnI8GlhEg1V5WkrfcIro+UXAKq7LS0ZGdBWI0XM6DKVuMe6Z977IvnBYwDmIzjeq
	 gm/kaZPVuRTXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981F4E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173420495360.6482.18289113022721336425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5a266751fa096c40639d49fb88fec95b91036815348e133623fd60a4f579ba
Date: Sat, 14 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734204953
