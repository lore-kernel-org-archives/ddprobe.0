Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C102E2DDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786564834; cv=none; b=fpa+YIuFG45k1rTdU3BuL3hrVAiSwtWXjpPpZUQaEU+z5fYEtm0xm840M/7ddMvHK9OyLlwn9dnNYaocrvoChdNovAep4p/hs++uvBTDoFWPmT0+3HeohdQSjmYwn62DotRo2dkh60d1RX0UAmaoJcPzdQeGaJ7q4/pU/tUpP+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786564834; c=relaxed/simple;
	bh=P1WXzhZQbKfc8RlFLuTkbK6Wd4LLUkZvcvukryhTLtE=;
	h=To:Subject:From:Message-Id:Date; b=sTaEZMmIEZYQoG7+oS09RTslHazyifPeTTJocQSSxfyG1qmN/7Vh/LkDiBEVh6/CBt3k5aSjsvuqtYqHrL/Q7qqs9oWSdK5GSDLrS4OZrZD/4UeCpGKJRgbBe5XkTilPLGjxDwt3N1s1l6sgD/Jg1hBEB6LI3+m39DhpNtUFOHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiYzhCfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiYzhCfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD912C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786564833;
	bh=P1WXzhZQbKfc8RlFLuTkbK6Wd4LLUkZvcvukryhTLtE=;
	h=To:Subject:From:Date:From;
	b=IiYzhCfnVbh1jrMKDZvnBEDy4OE5KiWhzBAohuFrIdkbjCs/ugVlnSnGfixa2c1gz
	 SkYBt0rqwfYAEmijYditnvadSUS3fw+hPazt2xfOdH4uC/3OOOZLjZak+VQBfnflkm
	 WOkEUr1QgGuRw7FmsXhZEnRWs7f1G9RLJN/DHSgPoJbO/wLIzImWcaTE6TeZdh1J50
	 zRvMCyY7pOL78yyZrGzNAT2diYSMPI0x7btRAqouJjM4ZvUmR5BTPJgppmAiQc7fb/
	 vtSZK1lOB8BVzyGrWcUg1Ez7Hq/fKPpHMpcVmVN7YLfJr0N+QBH7Gx2+JXgSgXQ4n+
	 Q95Imiq9bAFdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9642C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656483368.25448.15324930223522921061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc4b278f393bb14f0b3d4998f444be52aa3f45bd9263f364b497674088bf844
Date: Wed, 12 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786564833
