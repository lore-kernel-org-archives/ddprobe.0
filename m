Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CDB18D651
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723016754; cv=none; b=HETvibMTkOWjKVP6s4lj2MoAIxzv01I0q667O4t0sx6kSw4aU0ikhvFTGXWFI71oLkbueFRxKdqoJsCaVqoDaXYy/PV+Uq+ICbHIcH5bRxAK9fQ1kbJXv1uDmiU854T9UmG4zZF28n4gQ6n0uhlMFFjMGFqip96pIis+yWELrjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723016754; c=relaxed/simple;
	bh=xiX8M/c3SZDUYaZqgBMns8kltcylTqRqx/KirVAHUIk=;
	h=To:Subject:From:Message-Id:Date; b=bweyPL/GM2VFEFyrc5Xb6g4YAleFmoqDqcFxGo9LmUKXW3cX9VmxHr18Fk8IfFue/cnLOt6zDh3tmiNtlIS3qcYc1KUSH7x3cAoLc2dSmbLi6yLSMs57TOvxj8Nd7mpmcIempNCCOxkPLz7rnglLIMC6KK0N/INqYGDWU7jVmKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwYThF3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwYThF3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C04C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723016753;
	bh=xiX8M/c3SZDUYaZqgBMns8kltcylTqRqx/KirVAHUIk=;
	h=To:Subject:From:Date:From;
	b=SwYThF3iGBofn3Lwtqbq9gbkwzAGVssdRVF1WCo+4WL75EPnyceFu0tJ+R3EoFRvG
	 Fzqb0STLwPyzAiW5J5ApIPkiMxuhJr8rvK3f7IXp/LLv8xLhEQA4p95lRPH4QKwse0
	 dTrFZcNjeVru0GnlGGMDKeyOZXG01/VqVjuRJbWlkNOW+e4m9ABlDxSVW0xTUEGV9u
	 tsHmbq0UCov3il46MIQDHhu0Bcvzxkh6yFxbmtb+WJBYi8RYUwXnOlKYM8umQGTtff
	 fYxIq3gqu/Ljp8mxAJjnLCsdI3MiEFbxxMsnFoX/QxxBtJYQQnVKXG4ySyHrGqoo2T
	 IcOwz5xWLV7mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9749CC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172301675361.4251.16355137293149540606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05e19b248657873e9d425ac15443ab64e4c9b8bbbaefa689d1014fb4f471438
Date: Wed, 07 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723016753
