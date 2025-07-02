Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC063196A5
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751470794; cv=none; b=bASt8MyeTy05BBp8xsVJb1L3ADC607EvDWFV/qdOThZVuu1OBpFp0uigoDeQkUdJ+DeN3CbxuqlIWODuwrQBACfoT/s8MtZwjE7ayU91lmo80oXDYhp9BwCgVjTNQJWaFoJ9K8M81CwmtTjRVlcJgDugN3+g494hJnxrbJ6yEcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751470794; c=relaxed/simple;
	bh=oOgxhRLpq1B6oCKMzUkQrEfpEakEb2J3T02BuIzibu0=;
	h=To:Subject:From:Message-Id:Date; b=aF8WiJAjhgqO2FK+8aG43I+Olq3LA3/HwZgqCaSDhjjQ4l+FfMZ7oZIVXFOb3WV8PTnrpixwcX7mtnq0B+B1NzlPsL850Lv7BkVA7P9WBNMD+ZLxxgwXQ5lc0d0y9PVGdd1GS5NQejRMh760PaWulITc2y7ZtASiNCnUXs5AgNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRXCEanH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRXCEanH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD50C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751470793;
	bh=oOgxhRLpq1B6oCKMzUkQrEfpEakEb2J3T02BuIzibu0=;
	h=To:Subject:From:Date:From;
	b=aRXCEanHBGbC3Bv04fPuvcoR1ETwyVWboRyzxj2mlGvLz0XE/ZcXhbaiepkDb41B0
	 T9GVcSK2106nhCMpGWpqx0PZ3hv3r/GetZCklZP1BG/ZUFUoxE/R4VjN7f8BEBUBxF
	 o1IcJmtWzgpa/O2L8pnDmAgcDfjTyNZFJEiGTy5cE2EwWpzlWtVnDccQr1nM4/QvUv
	 cGlgTmoE9nWvf/V1L5q8z/3GwRBLJL8r+9hVgL0JuKDQ5mCH8Ir5XxfD3DZPrbgZnv
	 7Zvw91iM6NsqnKbPwCc3jFKLXJ/6RYglDRTAkExfUY457Us2dvZiJaU1lzoB0FKLD3
	 RZ4zMvSOp/erA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E90CC77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147079357.12357.8680080290724350339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13205530b264974267bc9516220471dc51cb15107b9c4f746716282c2d38a5e
Date: Wed, 02 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751470793
