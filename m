Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BFC4205F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714989743; cv=none; b=OhiXUSTlYe2ZTPuRZsTC+EkMxip/smOh+XIYvkIUa99ZuTfmUfyqWgm4X57m8iwBRn/cpJlHqRDwcu7hrrp+v9kRoxBmDSOQUKTPCgI3fF8CBG8PwY9dN+exxSLR/OqyKA3Ij62/S/VSe5p6qEn6u6NA80n9vbBoyHaW27Fm54A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714989743; c=relaxed/simple;
	bh=mgjpGdr5IVUCwml48wxNH7IXRczbUL6yZQJe36WGyiI=;
	h=To:Subject:From:Message-Id:Date; b=k9gBn85kMnBduJI5pA2dqkkMWSQbjMxO/adTIijZy3yL5zrHiyUwsRq0XZsm8E3GL+2cE+/pxfexScTwcNop/wNl5lYu+hkTsOnvI4MnBTxeHMR9GUpP6F3zB5MKaNkfRzF6r1Q+wAkPaKGv6HABUvsRREnIjFRhu4XmspiHcvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAYbOY1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAYbOY1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD11C4AF66
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714989742;
	bh=mgjpGdr5IVUCwml48wxNH7IXRczbUL6yZQJe36WGyiI=;
	h=To:Subject:From:Date:From;
	b=ZAYbOY1qfetQqROgbu5y9qWPnLoy2WomB9O2Y+pfyq1pVvJXRyTlZxgI8WzckVDyR
	 l6nUWLRnndiGE4AvmztXJhPph9vCWhK6ArmVNvkYVrrJ4Gu8N3zOo8SNeWwUwpCnin
	 aBrgYiUvjtZaGlAEF7cfCimi2wp8b0SJBxShYa4177794cQXxVZDLxbqvIrFkttWGd
	 BpQEemDkbgr5R/Z+Az2LFMNNt0kJgI3HoAQ8g1t8LzIknzJdfCUP941g1W0EEj3Ukr
	 KPQHBDsoc0jtMokyZSolWkuuqmvHTTFErkZnkuSkMWKg2GZOJPc7TqEQCIsUlyjMBN
	 3YXTlMMW1LU/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC205C25B5C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498974280.30036.2062990613764194680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36686a3c2e6fb1306e9e5d3c80b4aa07c7b368035a4b33ec8ed48179c574f52
Date: Mon, 06 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714989742
