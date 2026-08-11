Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4882142FCB5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786453834; cv=none; b=C9Ecph1EELYjVUsZx9aeJ+Hc1+Gda8mIaPUP1F0s2eGNpkzWkeydqbpdJpYpWbrcl/mzARKHJDX23wIvMQwtRTLpyNMd0zl4+yA7rA/ehVGHQFUg4fOleVEIHRuEKunp+cb20/RvRoKJK95Hh9G/yo0o3Zt81VqyGM77XAmKTOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786453834; c=relaxed/simple;
	bh=lQtfnXif9Fe7/ZCF4JnZxn3ysDI1bLr+nPf15iwI+RA=;
	h=To:Subject:From:Message-Id:Date; b=NUDVy4A44PER/ZNE8z85jh6OBx1coZkz5cTMlQSl5s1ohEPSwFsGxcYSp02ufjSrty72+2nTbN9Ss9tc7AjzDZBCqKnYxKkxfxJ9MoTM1bh0ftj7XqgcHvpuypv7S8mIJkP+TWjsvllpMXOSWPC+rMyd6X2TCXpCZ8UssIraERM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4rBtXcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4rBtXcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB3FC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786453833;
	bh=lQtfnXif9Fe7/ZCF4JnZxn3ysDI1bLr+nPf15iwI+RA=;
	h=To:Subject:From:Date:From;
	b=W4rBtXcJtFUMiNm5dckhF7Ad1CIfzUYjQorTOD9QdXlYHvaqftCv5p3CE9A6iQm7w
	 sN8AxVtSA6dttK8JrsOWnODddp98gTyy/JWYWMyPugTkX+ajZIapUbneMDbuW35bGg
	 +eiNeLVE4CtLqQCiDFlIKJG/DVvOAgVhK+DuhfOuqhNJ4e8BFZRw+V+KV3PhjY91Fa
	 kQU3WIFQT8X+aHH0JyVYc8F/lI16qWAkx+dGmG+cVCKfiyTaFVUrtPm/HfyY0G1KOr
	 6VhchSU6hoWw89geydHIr9A64lCCkLn+tfXB6nyIl4d+DChdvsKePk7b9i+7D/KMR4
	 pi36As1yE8kCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1AFC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645383369.20898.18397033086323682903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41309d3f897647b6489644514e159dbef4f9affd854b0f9449a9c68373b0fa14
Date: Tue, 11 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786453833
