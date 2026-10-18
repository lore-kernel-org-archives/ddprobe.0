Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6460C351C06
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792296034; cv=none; b=U72VSGnDVmp0h0fCuApKOC24joOQ33yvK3AtRZLZo9buBrx4mi/b9cDkTg3XkFENXbpwgLNXaatadit5He0J0dqTA3c2h59DgzqxFkAdeG+3v4C7n/N3KVBGRmJ8/ElYqr+g/xRPrBKbnUWOwDNBt1/hiK1TCfTFjKxyI4Crzcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792296034; c=relaxed/simple;
	bh=H+9L/VUB+oIKoLDVLzPSE+aKxAOpVZfC/c0Jk5P66j8=;
	h=To:Subject:From:Message-Id:Date; b=WMryN2nlsHcmBAdyTpTwx3D+E7IcSCJmjgzciZcLdNkgX0G+d77/EBUtA/Uzo9m03SKAG1EQGCQAn02B1Jt4Z4KEZDLWh1qsHDdOjFRoSkUyDlR1kG+LaIKCzrGMFwWiyjBwM+LRTUl/8kntTwFS4as4Hmdpkpdq4fKV/1Q5q6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqZRCHGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqZRCHGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E5FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792296033;
	bh=H+9L/VUB+oIKoLDVLzPSE+aKxAOpVZfC/c0Jk5P66j8=;
	h=To:Subject:From:Date:From;
	b=HqZRCHGcLv3ghqBtX5G9QHcfJrmVk81Wmqx1AFWpVM57W2cPCXsZVcWzR3iHhq6tc
	 r6s1zMYnm/1plPz9Gn8Et7WNwKX7lsgEJlt9ociL5sbVvrdTByTxnKjNa8IWUcZGVR
	 Zt/ojezb1xtUnA93gPG9/aE7fM4F5SR1qvy5eIWuNfZoYeXaXgLkMgEfTIXQeh2i5O
	 blWJl7nYuC1SYXM7n0JnItUI2umkEpNhpk8b/rPlOBpS31vNq8wNjmnsRhJrhe/rKm
	 6ZxZHOiqD8kcmHo6/lpssWBeK+CPIYPK6ZEe0xpIbDsjPYe+we3BHUhe/kzbH9CghO
	 ofmWxovd46RDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC05CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229603372.20785.14267577321171745962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580acddf5a75d455a47b04489e175d03ad9423dfea74cb807b4ac159750279be
Date: Sun, 18 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792296033
