Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AE034CFCF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783918114; cv=none; b=guNXzievIH58FnNEsuAnLr0aWGPKVcEOyeej763DtoWb2I5m1k1n8nSURzkq6YAZqXzDBX5bJW5KGcAdPuawgOncB2HBS+Ci2AtxOp2p6jE/dh+XwKPQPcq8YrlsepO6uqDK+kcMao/XHkEP7pCzvrOCo0UlUwsyJxGGIUfA3B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783918114; c=relaxed/simple;
	bh=QA0Y9RjLvJE2pXHxjqaHhPKbmcyrTgljTA6BZMZ5J1Y=;
	h=To:Subject:From:Message-Id:Date; b=tv+yXlmb2w8fqiispv1JQ+KHnVJlFabyFg8kf+5VwMTyIAMKa8Tw8PqkduVRD8Mjuaz1mG9lRZCYxx4F9pGNVL5+s16U7tVsND2L1JvVaCk/zwN0x6Z0ZEW+7/HwJuprBfwyPsCDUfSzelKFyVICuUqUsm7bNXbcLoz9hSZ3VSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+YCPRZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+YCPRZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC24C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783918113;
	bh=QA0Y9RjLvJE2pXHxjqaHhPKbmcyrTgljTA6BZMZ5J1Y=;
	h=To:Subject:From:Date:From;
	b=l+YCPRZaorILZTFuSsFiPA/lc5z4rAIjm25Pg0cTsxpl91fZt7pMLdsaDvQHKCQfj
	 L4XP3BjVan383BFof73072Y/rrWlt7WVbI5BW2kmF7hGVmgCitGJXY/xKa6RI/mvAr
	 7mcVC2J6UcSsMK3m7VUbE8KDDFwIyJwGbXhfkVVxc1z9bBm7sg0ew7rsQ38hOaTzu4
	 6m/p/mGfl7KTXKyo/5aF2NuV1prixAUDhuVVx8jSfrFPUwGEEBBzC6R+avtlW5fUle
	 WUy0luD6zgnj2/jAi+9nVVen4hhyfXvR+4380xfLvgG2CSfSLHAFxTSPnquh/2/gnM
	 /bmso5soVwOlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAB1C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391811369.9971.7414022389037389885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738cc3dc38357d8591709bfc6777fd172df399e44b8389ecc51b13edcbda9d9d
Date: Mon, 13 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783918113
