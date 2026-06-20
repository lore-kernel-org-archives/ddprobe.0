Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFD6233954
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781989594; cv=none; b=mgxeUtVIy2pUXW24I3z90ssOrqc4UxVLfbrgzN1saOBrF5ecik06Io4MW/ld9Nt2rd7KiTOS7CEqfV6j4d4VjXrsb1vQ+yA6bVXxSMo60blY+TVvP5IJWBVciYrdq6lANcHq9ks0H20YnzvvjetBNAP6DEMLpEv9CLRm2zS06mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781989594; c=relaxed/simple;
	bh=74K+hSaOQYN3dUQmqoTj7Zqkm2MzXeHyiIieAQVgcJg=;
	h=To:Subject:From:Message-Id:Date; b=u0TvYNkjpC2n673+sGJBxOdRss+5p9ipLtcdWsrnDG10NcWtQnXkfFpVYHBcxgY6HtqWh+mkGCuFLOz9JL9Sjyo2UOyMeLKY3OFvQC98MkQSSGVZL+RdSqQwtA9WJ3TQe24yLqKisq18dS9jmkpoXWYvbHWf1p3H4tV3Kc99gwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4dJHL+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4dJHL+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD4AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781989593;
	bh=74K+hSaOQYN3dUQmqoTj7Zqkm2MzXeHyiIieAQVgcJg=;
	h=To:Subject:From:Date:From;
	b=k4dJHL+ZimOBTm8JsGVDDtIEOXSGDcITgup6j+f5aFpvFQbURkFfG7BlXCL2dv8Ku
	 +BpKuNUwmH7I8xr75dJj58dKjquAuJYQIDXV1vSwCkZ4my0Xzel0ZC8+l8MOVpYSmc
	 N8ATBa6tfrlFBtBFPyud7O6H0sJggZkuQrIEKZqlrRVfS7a4ekVYb/8ydt9bSEZOhi
	 Ed6dNXLymv6R+IqYLxpr+yRu2ttX75F5GNUH8/OGuDqQibUi/hSt5wDDuJeSoPb6B3
	 zw0afHaLW7Zjx+4JLxgln/h+vdURbEqsE8q8FiK+xqXwVGJDPcJbZgWSkkJGTvXthC
	 NieUVPgox/GvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E11CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198959371.29978.483125123188271002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a710b55013547caeeb7e694c713e83684ad3e930005f6063591fa4674b3709
Date: Sat, 20 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781989593
