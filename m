Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7418A1922FD
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779768755; cv=none; b=uqLzdFsvbSOeKRWZTsmGtNpZTIpwR/wtbfKpFj+1qgGj9AaAuTz3aQMiVh81X5PAVa8q9bzKCBFCwDOwy6E93LWH8+TZyr165nb3cGfOhQ2/Xc1CuLFzK2qUIh93+DxvMowvbu4k0IxlE65jagIuKidoB9AviDCvH9khSpC03tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779768755; c=relaxed/simple;
	bh=z9/PFEy+947Nih2F2CjXW5mPsJeox1qABZbWRsJgBnU=;
	h=To:Subject:From:Message-Id:Date; b=prELwiBmb0GFFIuxamtQTlfk4qqpYAGNbFdlJ9wx8fP1uZUEc6Hc0d8J2XZUl1WEHgOOA1HEy5idojBWoHucxWkb52METDHpbyiNSdx8mW0b8WHoShaJbihSV2WwGPbX/Hb8zA1c+7nxTOHUoUO14jqrfb1bimSZEuVBTHmg/J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jydyIDOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jydyIDOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17FEC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779768753;
	bh=z9/PFEy+947Nih2F2CjXW5mPsJeox1qABZbWRsJgBnU=;
	h=To:Subject:From:Date:From;
	b=jydyIDOCfF15wWNZ250dMO3RzvbvtMRmdA54u8oWicNIcy8MJJctJnzATdyI65heQ
	 j8g+CUGE6tEAhWuAO40IUMCPP2+pVaEqVn0zCkypTAJppfzErBH7myGB7uzGVfDzy3
	 OkXMy+tFvjZySHG2oWsuAZ5502KwLCr22v49ZH6Esia/JHtczGki7i4qOO56UsNtcA
	 k1/sxV2Lqg2ZpjjHhqsokSb1LPO2O/aHl9seWxJmRMAF5dIaSR7Vi2/M9qugw1WmXi
	 ifcf0/CZVDE/Qk2/oOPaOWPDdnU0pSvyfBF4YPYIdvClj+mXTEWEPYZnwWzmMuSzdH
	 3EupJjk4QO+WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FE4CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976875368.18798.11472229526110788125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061e760decf7ee71daf3143a75cb7ba2fef2048219d7600a608da93ce7d39114
Date: Tue, 26 May 2026 04:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779768753
