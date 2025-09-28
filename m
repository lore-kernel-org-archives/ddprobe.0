Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E94C148
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759061995; cv=none; b=m5U/M3FFi+Z8eqQIjBbo14qvELdNoGCcPoBIgVW5YPx3d7BxaZLWzrRorkU6Lp/zZpj6Mk6F5nFrxQ5V7JzZL5JuKgQbzPPrqbsAiHq/xUq2g7kFhGhuI9vaafa7sN9zBQpcLhVE+3aF1HGqEdrXs/5RV1qP7bZl0ugzoS+DuW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759061995; c=relaxed/simple;
	bh=N396lcjf9pSWt7TaGYqPmxM904zrTKWrcBmf7phnUy0=;
	h=To:Subject:From:Message-Id:Date; b=hfx5lfKB6cVvCWHzUu751zlB6rK4siOqaXOA3SoDZrYw06bCV6KFh0XMpJYsonCPLNORLPD9JtY+x23Szrymd3kisauzKOMp/5Z3F+zprg4YTUmJYRG88m6Fn/g+sfi7Q7dpMsgFmnKr/gV/4gkQHR+gSmqVBtWSi5+r7n6QpV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpbTCkgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpbTCkgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A744AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759061993;
	bh=N396lcjf9pSWt7TaGYqPmxM904zrTKWrcBmf7phnUy0=;
	h=To:Subject:From:Date:From;
	b=kpbTCkgTZkml46riOYmRoeN8V/D9qlKjRvkE1qls9X/xBYODRZkz2tIVUokGsog/k
	 fJlJIHq2cmthVjGu8qs6LoV/pjqtTEKAmLmPPyYMZPUA6IWGLmy/0ZwO++emznqWMw
	 CG0ChNDTsiJYb/FV8R0k6cUGDvlHLNS3x/nhE/1PZ3QSSjENwQGKD6GYhTEYeZy2QQ
	 UT5+WLVv6d4AQqH874uWLldc8Xo4OCj3+S9gwrOVUU8TAs6E0WUHt3JYtWK4ih96A+
	 8K6wuSdTZahBuwnDfDEBVbuxSpapYeSKRFV7dS+mIF7NUK3r6moqxzDrCWNz/cWMys
	 qTD7U8sap++RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318CCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906199358.19856.9033546475312369188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1def51131bc0f9cb8efcc1876254e1cb219c9625090dc92ea674992860369c89
Date: Sun, 28 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759061993
