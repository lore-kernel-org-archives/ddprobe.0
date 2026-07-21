Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A72F3FE36A
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784600914; cv=none; b=OzIRYunizbk/Jxjo0QS++OOe8Vq4RO9z9+2Gy/zxkPtg7Tf7Izn+IQM8HebNtqFWPx5FvrExmbqUVVlpkuxoHtMGwqMl5fqn3l6u+H1PGtALpXAcU8AAAHpRm0ytjLtEpFl91e9Cg6ep05J71N4otSpEYWkXDxDqGHyqeUT1KtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784600914; c=relaxed/simple;
	bh=uOUOGFObS6wX1PnASJzMEmvuMfciyhoYpc0mFDYWh/w=;
	h=To:Subject:From:Message-Id:Date; b=dPg7ui80QUiYqYr2xPtVFtvirK/rK7kRvfmRzJ07F8wansN2lwij61KsO+G03kqeeOWPQzqpT56h/2eOW1Ihy5/HI6L3CEZ9QtNDtJbr01JIzInxHR94xJ85OeezO8gejr0oVNBDz8PgT9h4v04Lm5AfEzd6p1lIBcjAKljHNnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1lhM+7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1lhM+7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD812C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784600913;
	bh=uOUOGFObS6wX1PnASJzMEmvuMfciyhoYpc0mFDYWh/w=;
	h=To:Subject:From:Date:From;
	b=S1lhM+7AZC0yyYJNIvNqJatSp3jC1exvxSRgmjSJtbZACZIu+FDfoGVvxUrQngUyj
	 rsyqGDtdX39T4m5Y1ggKStc8vzqZUeg0Dx9C71m6WfLwbf5MWUUWuMzLPUZmQMMhaC
	 5u+fT37qsqwoDvdr2HCu29C/qNQe8Ka9nS0DqKKSgc2S1FC1SHS1WRGAjUIm1BTNTK
	 m2IgKxZgv+5zWuUp488ECtqg54U3cLLd8tpUN2m3l8ZjBf/ePFSuA7QAHmIwqHKguE
	 OOOjUwr4y2pLtW47JpsJIfnN5TeN503n8W/1ZiUBqyEvQ5f9RL4ifDGDUQSBkpjjOx
	 kPOxxhkBxRNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C16C44520
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460091368.3681.16621177925993354535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053932197e7e19defb4243f4ac08183c1a1ae12368c251da8a290a5589dfed05
Date: Tue, 21 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784600913
