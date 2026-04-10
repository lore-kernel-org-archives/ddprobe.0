Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29A83DB637
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775838454; cv=none; b=lPNCvLGaaCezc/BucW/gOM1VqTkC3zy6fHlvLcztKB7887wxM9hXXgmq96nHirT1NkF6AX83bkrim2CoQ6Ra8bVw3RkilseiP+8r5CF5qSfOEqwpnhCRTHeMaEb9ZObLRXSUpmObUthgob1g4LK6JGLn8r1CtAuYDDHu0Wmr4Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775838454; c=relaxed/simple;
	bh=hDFPRcZ3hep3NbL/9F7PD6UZS6LIE549pBZkEgmpl2U=;
	h=To:Subject:From:Message-Id:Date; b=cxnxU8R7o3jYxesJmffZeU3+9ivpHf3doDuSVOvY6QlOUBcvvZwcjhKojT7v5C1v4t/PW+U2mLkljt6vn2QUkqr7EIHW4zsv4m5BUzVprS82CtBrVwPos1ytJU4k4Z7BTIVEov+UnjanxVf+7TiA1ZpKaQ8Xu7DpMreASfQMB/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvDY8Fpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvDY8Fpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA491C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775838453;
	bh=hDFPRcZ3hep3NbL/9F7PD6UZS6LIE549pBZkEgmpl2U=;
	h=To:Subject:From:Date:From;
	b=cvDY8FpnXQugSx3DVq3AdLH9t0TFnzt3CmND9kJykHUbBtu8b5HW9tGvMTkySPYxi
	 1/XlHZvnCCql5gDc+0uDSCUZifYq3cvYPmL7Xu5aBQpFI4p5vlpH54YkLJAa/tDm/v
	 GDf+dNkaCt2KjcMDwVo7j7H+KwBlWSMef3mMyqXvpc0sfmvmvjNHAVM1E7F5rmxkBn
	 UntQQcLcZxA0r+YpT69V+mFQTlzDfzlezIitKsuOv5ii2zs57EQljKV3ylopyqtsvQ
	 J3X84O7qMfOGxiMQJg1b1r8/2PgMsGZO5pmTf9S7tUJqg1rsUSjzFYwRURl3QzIM6s
	 XH0UVjEfl+FTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0C8F459F7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583845369.8110.11924778238153066178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa83df31bbb5cce4cdce712c01daaeaff6188f131da0a148892c320e36b06503
Date: Fri, 10 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775838453
