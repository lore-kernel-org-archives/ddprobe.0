Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C59B36AB4A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768293834; cv=none; b=i3O6AzgaVCQgb2PGZ9M8SITyG+BzxVF+d/lfO+UwdqN4vGRp53XfnXRYDjcMwOoDvNY1kKLlJBlvntE7czKNRKTxqDKrsAcfVdZF+7vaxL804Je8vsShHJQEWHBRkPS4N1P43Rd0N/2gju1rRKeMjvnXspNZbjW/x5+PCfBVJmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768293834; c=relaxed/simple;
	bh=YKIwgAbJZcpK+hnqtGSUXp1Fa/J/OaiFNCI5ugBapvQ=;
	h=To:Subject:From:Message-Id:Date; b=i3WXVduwvaF5ejaelgACNfIlGdAuRQs36t9X7aAbJtFmRE4mF3f7S41rPG52VJ4kUlh94UzXE5c6ZUi8kwfLKzgePYoSHWdVGkqq4YQm0e3Aa1Na+rx2YT+WcMVYCBy7AHPz6djIjq4Dgz/7jCh97zFMcVYhH6hJvcx/OCKA7Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAuJS9pW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAuJS9pW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E108C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768293833;
	bh=YKIwgAbJZcpK+hnqtGSUXp1Fa/J/OaiFNCI5ugBapvQ=;
	h=To:Subject:From:Date:From;
	b=SAuJS9pWEPjYolL8JTktismZVAlcXmz4MsD+qGGos5i56oFBoRzSklccL++lmWfRW
	 wjk2+kBR9tuQBs4z55Zi+pNG/P26ERtJczgBuHi2gzGVi8zXuiFZynLBSvxB1oe51Z
	 JzWlPn8dywuFOcVqZeTKfcVpQJaymtE38pqE4YxEhN5Yx37k55FrnPESdFpbD4Ohf7
	 K3pcCKJn8ew+3MvlLuh+gSf7QMoJLMKlExJ08uSoCoO8UtjvPjVxFrnQKWXdpdx3sz
	 /MaiXj2UBDrjrWPxOnPGEzCLUidnVSwZLHXcOUJBUfa8u7UjOFP+/F9WNVikMi7stS
	 cL4CyodtWIchA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0CD29DE2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829383357.26258.12683361415644804240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c7cb6ea9fafdb914a6a247629e3e7a4629df59113f29a0d8209e92e38305f0
Date: Tue, 13 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768293833
