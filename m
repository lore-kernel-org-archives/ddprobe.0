Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62177C
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C185C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667244054;
	bh=nDlfmPPrQAToaaflyKafGd0URFhNnsoKISxOY93P5qg=;
	h=To:Subject:From:Date:From;
	b=lpBtTbOc2iLK0KzU4j/7CDI+abetgucO9Zq1dGmUrB9PqpNuXJBWTc7sbaO0robnS
	 lh9BNe7/0QEiJbFQKDuLbl7hYG9i33HSGAzEnCh6phVSyHgklN0Pe5h06LZfQeKwIB
	 vDYMojV0rc0NFAMI+YRCS4rrWU/46FHmYNOVkTph/EZTfWW7vi/ceHPhpWWfV3U+xu
	 DyYfsjiF5HYPG+hPxNw9FKyR+8vznnfxR79If9tHEcbJAlwExXVrr2DDHsYYB4uA0A
	 3WQt76RRGlx9hljWQtW7I2GK7MIjsidLV2pbI3cs2UlzVxL32N0YU7PXV6PgDNqX20
	 wHCgRQHdCBLcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A41BFA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166724405436.23102.16466705194612089599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc45a1086108ba011d22d9f9445fc17eebd04f9bcb33d0f2bc83b4128e62c9b3
Date: Mon, 31 Oct 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667244054
