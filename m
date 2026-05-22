Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320DD5FDA7
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779424954; cv=none; b=t2AnUuIxsMIj46XcY1N2J+2ycuuqRW3xY68wBeJ8yGzIsPhpymB8iGRwi5Xz49aRGqyXi4K8WJSMzfWuBR5sfEMtxbIPFj0UuK7b3tldAlfGr1/y1doMmqyE8GdcFfUjst+xa+yVj10WN0eqClNUuWS4bwLsL7rM+xAIYk010QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779424954; c=relaxed/simple;
	bh=7FqxmlyZvnYjMMFQKd/8pUh+hqNZcBEDIg+VhHXvK5s=;
	h=To:Subject:From:Message-Id:Date; b=c60h4rO2GhPBummPIiA2nvgeJ36bhKC10zLDG+a5zTHAWF9pp05oDKJFQ6kyixAzj6NPIKhSIG2OocLXy2FG3FveyCbX5lmTWdqwDjaeNu7ULC//MOqvmd17iqOQqbRh2TBdTnCjoXGY7/gCWS26VLPiyTt687h0Rs8LGV7p6EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgxk6KDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgxk6KDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6791C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779424953;
	bh=7FqxmlyZvnYjMMFQKd/8pUh+hqNZcBEDIg+VhHXvK5s=;
	h=To:Subject:From:Date:From;
	b=rgxk6KDm7Go0azqWET5vT+cmzmlrPnITLdsd5XcQ0tGGFbXhevZuSEUzIe3DXzqKj
	 Bnz5gsT08uyr+A8E8EGBwP8xIDlCt1moexzW2VK4C9PQUl87WzToAKU/hlyopizhXO
	 akLoGbF3ubnGzhKt+08oHh1Hzq6uZttdEuGkP9hqR4IzAQW/5Eng7MIx1xKKZ3KIxj
	 boKFXG6xFf6azLV9mFdKkhCHkAjczjf3P6d8rGtTDRyPo9uEk+henOn4fOhu9H2d6D
	 F6zrmxwmobzJIrnHb1KKGDosLaFHg8ruQdvHlz4pWAHIYyS04XQgsZtfZL30DxdORs
	 mW0LV9bqeDDsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5C6CD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942495368.7997.8722447248741442916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be34363257c107f9f93764ef6620c57ff7201e229a9c9cea74e59d698708ed3c
Date: Fri, 22 May 2026 04:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779424953
