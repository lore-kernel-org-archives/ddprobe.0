Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3529F1741D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737477354; cv=none; b=Nzk6SWrGMiWAttTdUUz5ve90VE91eO0W2AgAAY8VDOk7vWi5AKU4+gRHOrvJwBZpN6MIessyQPTDlFFDuGlKb59kz8YhwrvPCQSPZdyEp25Wvg+BA6YCmV16vwaQ8p3vs3USFQ0B2oI6POA+qE2X6pkKeGJ18WQKvuBsWEuf+1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737477354; c=relaxed/simple;
	bh=2qqAmgtGd7+PFH4Td/H0pPCzNHQ5db3BaRZ0wo2PTr0=;
	h=To:Subject:From:Message-Id:Date; b=U/gFtxK1FtAWkK5fJCY0ctamTseNwpVHvJ0UOEXAn09WpIIc4AuP7oYHYLH3O5zw4Q0HWMPxXJS2TjDmc9MZRorAPzeCcYhg/zy5fsdDT2BZgzQ8/nRlw3GQ4wGRfqIrK3AceU0DqW/COh9s1eRpjOaVQp44yuHu5u1h9USBdwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIqR5ZE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIqR5ZE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3604C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737477353;
	bh=2qqAmgtGd7+PFH4Td/H0pPCzNHQ5db3BaRZ0wo2PTr0=;
	h=To:Subject:From:Date:From;
	b=eIqR5ZE540S24wodYwD2XNuEf5RQ5t6nYQj9vxdJ2hVrIs+LR9f+g6lVw87IwZ2O7
	 L/dU+7PrUA09F56Kb4OjBkmV/NARACoWPGz7xOVnXugFgGB3cMQNiM2ZTMNV4x9sFk
	 C1afrUmlF54zP936Fp+b6kBM3VEiIocYD7G98qRqNxl/gLAcFJJrElq2h4y7QC90wN
	 Q2oXcQ99YCUvl+qCST9/u8BL09QfJIvxZY+XLyPaQTVouiwyCO6MO15+AwyLCh+FHU
	 quSuOf5FUuBT+WhGnsmxrKxyxrWJnWfOWbOdtmPisHTz5xhWXkto8GRyLpP6tHDz7N
	 WMXcbP1rPKPzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DDC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173747735359.15415.15900127416369790966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4626518bab6b3dd4c0996665d30dd75a7fe50a53d1483985dd75fde6091be0
Date: Tue, 21 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737477353
