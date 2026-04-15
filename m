Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B09A3A1DB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776219454; cv=none; b=MEulJ4kwJ3t/OsdtUs6mAhbZn8g8ZmRq6wrzSixRy6i48rp78/JceVWGICf6VxVBHH/XiM6L3jhbN+GTx0vZCt+wfrFuQG66kXg7ZAkiPyTtzZwitQqDLTxj0Xw2+3xTWzjV5iXSOeYZGLsXbS+OeqbDMH2LklupZ3CZEiBNQyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776219454; c=relaxed/simple;
	bh=oIadBXU8/YIqEeTLMfyto9peqxFSNwxSANzQ79qjFKI=;
	h=To:Subject:From:Message-Id:Date; b=e9u6PN0sI4N3nbUZ2t7xjLYYysVq0A/lNNcIU4ewTRjoFUQg0pcyp5rABkS0aE0/XofWEQk+XocYVO2ys2XHu1DPpEuuZQfOCqGz9rTkEFUi4BOsqmLkfH+6YDn5vw41d6CdQD/UCW+48SB4LxR8c3Mioc3GVOw+Y5DJ8mpdNNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmSoyOFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmSoyOFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC629C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776219453;
	bh=oIadBXU8/YIqEeTLMfyto9peqxFSNwxSANzQ79qjFKI=;
	h=To:Subject:From:Date:From;
	b=BmSoyOFsTuNlsVaLw/E4FBamCXJGcjHHqmV8YxJ3GKmp/P29pQI2bCYB/rHJo03VY
	 zMACPRypjF/zEO7aVHRfRm6IqSKVz3KeI480n0xFcIzKRPK5DnQ1bqj4tB8nOENUT5
	 F/ukdbIKWXJIwFNFMblgVYZNTSOphXRHdbIPUf7LCe5bVos3UTCH/T0XCLHf3yBfFI
	 dTJvy7liH7mnYn8U6Cnvxnp6qKNWayhMxEZ3+SxQHQDrhyD2BmKnZ609cjSOHFpZ/Y
	 H5uH3G76mCxGI0biqwpi1BJh+hPixTTgkUf0NsmJzT0oB9GaIy9r9n1OMlCMsBe//b
	 oStvrGlUmOC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97F8F9D0FE
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621945368.28384.13955185782520331719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d260af6a9118d145b57ac995ca47cdcef89b6a25c26398458e9f25ff2e8287
Date: Wed, 15 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776219453
