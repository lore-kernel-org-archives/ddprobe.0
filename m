Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB363655DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787281835; cv=none; b=a0flVLluVDrfUd9ItCuBhpiXcGOXVW/01ooO4k8rKdKuMuVlRfPWBF2DRDZyeYP3YN3DVjge2kjwf+LrmTZm0xo5OTHWgiEA7WSDzh5lXJH31I2ZwJx0PmjzioJYftkf59w9rx98lg/8f6z+Bv5+RU3pTr/31p8j+TWRLwtJp5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787281835; c=relaxed/simple;
	bh=SCzT43IqCj16PjrRejTZ6armRyg7wiHj+FJ24YxoEaQ=;
	h=To:Subject:From:Message-Id:Date; b=qI0ckVmg6qzjDR5ddov0tQ4o7oCsMSQA59opUYWFQY1lPxUWozj1rZHALcnz5hBweUC4paHdwIvNGCUSCVL423vKIrKbp8Y25QJwRO5rdQQlb9ZpsNiglk89KCG8TmMO7cyMHTW/PwcPJKVYpJAu7rXPgP+r8L+l8gO7xJlwS4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRk1a5Mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRk1a5Mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAB5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787281833;
	bh=SCzT43IqCj16PjrRejTZ6armRyg7wiHj+FJ24YxoEaQ=;
	h=To:Subject:From:Date:From;
	b=gRk1a5MbR/W1pIu4Qg4l3p2DJK4IV0yL3jn0uGXmQt/VsVYaQ86oxqqYXTyP7YPvK
	 sKyDB9FmuKMouY3PG4/qiYDBdxGsXAp5zfYhXU1hYquLE8xuFocLWWqjTrkvUPmFgb
	 AVI9QyM8dOldT9aGX5vm9AqFnhQUy4sa95otrf+qgJEaxQonxRp+tm7OSOZP3Z6cSt
	 f94xo8tDbv6Bh+n0l4EbDjWlxxQBupr8kk9sJD0eEyeK73yYjjnVEwkbKmOhlBMzup
	 IFJzmR4w9mWRIy23MXkxkVLKCFEmSc+t7qYcZ9i5gT744DvR2oJnh57A6vbaP3ovix
	 PPivaTdOo8OhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6029C5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728183373.32133.15471926278762858628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a186d78602ec0bf20dfc754cbd9d8caed6b04bb505a24dee6e541d58c16565a
Date: Fri, 21 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787281833
