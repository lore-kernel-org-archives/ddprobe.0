Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39001DA21
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 23:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713224363; cv=none; b=SJpkL8mOxzrhCDSotutrC/6Wyh/ULqQryqhwfhYyi4SP6zh25eA9KeR2TaFgLPY140qAIyqNRFUq72zsIHUa4WAFBE68sTY20petkb3DIEsP6gKl3t5SjV86GHPhV5Itj8vYOh2ZacOhShRDcu+GK9hAyZSyXR6ZgpOG1GrTU28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713224363; c=relaxed/simple;
	bh=vz7LEo2wWtz+x3hn3yky6Ngv14jEBrwQD8OJNMpRq/I=;
	h=To:Subject:From:Message-Id:Date; b=o2D2i90vyD8P6tfYWdCL+9vTvZt9xtUNYq5muhyELOgEDRn3YX4MBrw48zd8lezAwoRZtWaQuyKXcjNkCBXKPXzZKZkwt5NQtk4doyB971mo2HL/TIOkPXmgYI+6fDoXu5RcgUTFZQPzF9ruoAZ5iZx+wIhXNYgxv2vr1DfLkk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ygp7sWiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ygp7sWiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F0FC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713224362;
	bh=vz7LEo2wWtz+x3hn3yky6Ngv14jEBrwQD8OJNMpRq/I=;
	h=To:Subject:From:Date:From;
	b=Ygp7sWiy2555jW8yWW+Pkj/Al7vSUZ8QW1HYuQgPv/e4df42bVIRCgOEU5QGgG+bd
	 Jq+gfdpLaOcD+DY9YbLPYHaSSOAMouh2J2BskjENKFiLn4PgxnLpYvBfmLuJ6hmbQp
	 NwzMeP4e94vwbXN0WEFXGiDgRTAYnNuZJ2Ko0ThIlrVvNli0eNfg4lxZb2Nn3ss6Fm
	 DeCCOYPSgwXwvIaMiOveWZMvbqa0uDr8e++1ArcdzlM/Mwgti/K6gZSotX+0hk8Iv3
	 JQMtX42N6QVQuPg9gkI8mcy/a5Y84bXYtGLpg39gY1tUiCWuZEb5E+lzDyO5jCyyMT
	 jDx9P4ErRg2xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF667C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 23:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171322436277.6743.14729090168025515290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a903645b046568155c221710f0ac442da64e265b4b70d3e73b2539d07708130b
Date: Mon, 15 Apr 2024 23:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713224362
