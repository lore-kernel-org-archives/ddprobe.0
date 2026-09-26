Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C8C1FA272
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790416834; cv=none; b=B7aupPvSYcJmsdIHNtCDAheKtBqLL50EyGG4iKQ+JWU1cP9xc7bwN42lbROQffJ96hgxZeT7vWGIrCk6+PWk5zOmX+zbUA27zUsoPgCu3cEvnhq3XJw9mIcVvhro7qXt6yjtqgAxF5WUJLGdoW1dgeUo8JX/dHGWznWm6RiiTBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790416834; c=relaxed/simple;
	bh=ayUJ+lGFsGsxEte3H6JOKcjSDfpajQwrH6TLl9FReDA=;
	h=To:Subject:From:Message-Id:Date; b=pWk/2NBhItp/LB+NlA8Omw2DEfyhgNyRA8WqD5wpnvB+qHEpZc1SyRNQqtw3dg710szHPBAvIsyf5b6RiWliEPCobxGl1YnaGHRkdr0aecK0i4+1tWzxKXfjTFBGa4RbTybmwWSC8NFIafTJr1NLb154S4+o/sH+8BDuRZE4514=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfxHIs7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfxHIs7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C6AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790416833;
	bh=ayUJ+lGFsGsxEte3H6JOKcjSDfpajQwrH6TLl9FReDA=;
	h=To:Subject:From:Date:From;
	b=PfxHIs7vvdnfp0r5Sasl12F6t5Cud4HbuIiRxbxem4KHpFu7VTawaCNM/JpLIIOKD
	 Hngl3Xb/10I1I5JiPLnPHOopIP0D7YN2SLSrzj9pJIh1GFK1M9pAapnAU0cz8EK1MJ
	 I/4yyMrsqCPZd91wcZJ9HH1abq4RDo1pgMC2hCRYhCYZkQRrTkF5fa9risQEZbRJUV
	 g6v65HeUoAOeF8sjmUcDPCCutlwm/81ZokHcS7IEUCo+UJbtA0fZMcSMpaO8WTMdVQ
	 KdUvp3c7loCsFG9bw6tcetr7e7Qx4tW3MNBfrbJNNAmVg8slXSx0LIp4P+uf/UCFiM
	 M/k7c/3OpPJ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A982FC98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041683368.28490.6354119099911792288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf8079bfe09333280125eb54e3930232043358a927a2848b709df5fa43ecf35
Date: Sat, 26 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790416833
