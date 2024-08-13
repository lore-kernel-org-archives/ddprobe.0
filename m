Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D59184547
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723541754; cv=none; b=XFCcGF2K3fAjt8aH+cfWsj3JB1vRsitNpuRfvQG1l/ai/d4GcirAv8uI+ev8PVOSg4Kk8/sSEKIPR7r77qw3BJWTG+vldKelyAMf6As1r5gOgA6Fk0wQZq4gxFfG89CxfZJj+ZnHggyjcISDlN7QQYGBoFm0BtaD6tmdDFjOTng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723541754; c=relaxed/simple;
	bh=IBnCqw+jD3fCD8oUCjtjJTY1vt/y1PfcbQo4hMuuaFY=;
	h=To:Subject:From:Message-Id:Date; b=gRklP+NhkzTHJSGFL200JDTxg3jPks0fB+xVKDDllD96kOuhimm31mBU5yzB4tAO76sY8/l/MDiLWar7Wuf8tdZG/mABh1P24EA9zlgw9Fydn67XXYrMToNwqRk6Z3TMOCPnLCkhp64CNH6SMWuUktLkx20eibIjqNadrdAV7/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlbHRmCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlbHRmCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F14BC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723541753;
	bh=IBnCqw+jD3fCD8oUCjtjJTY1vt/y1PfcbQo4hMuuaFY=;
	h=To:Subject:From:Date:From;
	b=QlbHRmCYK/xOLJcX+/pb96W1f1dTjhZT6xoDDUk3Xdll1LVBZqMwLzZreduVcz1la
	 smB+lf43pLruDImim6rhQmUdJo4p5a67KJdBrLv9yik1wnHv/Ws5vf/qpOc8Sirm0Q
	 fcycA18MbBSMTkEL0mxjuBHr0XAsRDMiizFWSNeaWAx9MiTV2g3St8OcSKy+yBpmYy
	 sI7yPEuIpSYm5772r3K3iEYIhRa7Y9k65lXG6OxwQMK44exJ2qhmNa9vxkG291pD+f
	 nULJPZ1dSY+UdNj+Ld7TvNj7wvPu7sHeYI69uTcptgicG1DEj7PXs9EiPRGg5sVabz
	 WNzdOUrG+pWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C05C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172354175358.2314.13265118781376942164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a272c9438bbe362f18c9df6fa070a7957ae6ea9aaee21b9211769c7f2f34feb0
Date: Tue, 13 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723541753
