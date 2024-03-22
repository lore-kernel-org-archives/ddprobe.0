Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C8878274
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711144697; cv=none; b=uCDNq5j8cxnawMMo5JqjkWx2GrLtqaUTDQuWaV+egLdtzDnI5ZyQ9O9vDZlegUFQhFQVeFt96NLVMgOqLx7H+/gD/lmMOQIV7v1/cYWTBF0gJOElUjCtCqVS7hkPVKw6/PhAMNz1An2ks+DxML3IEItHgIlw1Q/txOB3S88I4zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711144697; c=relaxed/simple;
	bh=P55rRI9Sp7l0z1SdWqc0STUXcQtJpHx/WI9h6oxxhp0=;
	h=To:Subject:From:Message-Id:Date; b=U4MdASkvt/5JOEzeGBkmYpkn/dcVaPzbwy+4zHte6sW+ioPE+SAzO1Uz2Wyi70NVlIUcjhLAGI7cquiPqAmNpdNgIbTFUm2Lge5I9VbGIWESd5Tay6qbfPtHupsjeKmUpIembIoNUZ92WfgRGgOC/yuYqoCWJ/wawieephCAaw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fq32TnkU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fq32TnkU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ABAAC43399
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711144696;
	bh=P55rRI9Sp7l0z1SdWqc0STUXcQtJpHx/WI9h6oxxhp0=;
	h=To:Subject:From:Date:From;
	b=Fq32TnkU8Cbl3Sh/QxNaWe3lTz5nZQrwniYxnzL6oAb2dppbQYtc7bvlzq58TEdzZ
	 1THmfa15OqHtdDWsVKGA+wnEeRQ11GbT9jaHFB+GO/JxMjcD/vFfoN6CNduYoJrWPy
	 dAMKQjH4EwaAa8STeiF0HR6fYuX2nRRz9ZXsW29byPqTMR7fKIT0g6VIU+fvJ7AWB9
	 W+xYixWQsNZO/jmUAmsyZpvX74SLOc8O4DV60uReaHotzNYPtvwb1Ghp3GlFkGXWR9
	 53aTBaRAjOM1erURKAMicDWoMEY1UjYAjFAFLT/aRerEcfmzUsB48QsZo0w5K7uVQ3
	 SFLsIeWnIPbOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C14CC47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171114469636.18165.11101448045114677996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b0c391655bf78ad5a115c160ae368b35d3224e18fd7230c3f86db07ab55110
Date: Fri, 22 Mar 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711144696
