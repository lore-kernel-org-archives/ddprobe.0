Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDEE1E48A
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734484554; cv=none; b=Vfc3J6qJMVpTJIqoQ0Fi3YMt579uBhnaQDCMQaZGWdfndHmT+WnHmw9Y1fRlm0qXSwfMINwKY6/dRJTwPj4pPAIz6zjFp/7Bi9idQQZlPlmPibIPRM9c9ugbev5IJmHc0pRMsMli0oMyH3PsITPnYHgFNeQEUY0LQCdjZcAxbpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734484554; c=relaxed/simple;
	bh=p1T2JHQ61O8okxVUnC2KNtlw52x1KiZNBvLYp1N5KjQ=;
	h=To:Subject:From:Message-Id:Date; b=uebBuw+VP7dlLhPxrpDJeCy3VsBXXSdQm+GXxLg5engOgysmCMoiC7ks+0EXMGf9W+6tzolLfEU2PlT0byYoKCqN2fxCpklQXXlNDCWtmzcLMsElnMY//+dNJX0MEEDDPFCyH2bilkYuR1L9EJcQPtpJpvEys2cFs+X3n+1jlGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBvxlEXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBvxlEXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D56C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734484553;
	bh=p1T2JHQ61O8okxVUnC2KNtlw52x1KiZNBvLYp1N5KjQ=;
	h=To:Subject:From:Date:From;
	b=FBvxlEXGap6GT86Ylr9KSpTJE1ej/UXnWCEj7lzi+U2R1g4zyfUy6hqJ9VoC33caR
	 DIhnP1+FTo6S2qQu4jRuKHPGUna+L7Irm3i1XIZ+m+EfJo9ouP2sCorJgXaD4ZFltU
	 adDL1r+MsL6HSxiyzhOE8Vc9LorG1EelHhMYLWqV8e2Hjjh45EaevEc4n31X0ceqPK
	 qM55nXNnAz32r5gyVA3c57a1ZbFb9O64sF5fTOjb3h5IUlNPHevw9DmARiKDHOI43n
	 MBU/L++p+b85g1Nh+ZFRjWTcEDtxU9BIGQsZ0lmMwmOhx/qMdyw6gvyM0ol4SdPPRs
	 pZhURSj1Evn4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CACE77184
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173448455364.2254.8368303592491517409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00e1297da0198bbafe28fd7b370288162c58a4dec4d07fe65353af15fafc74d
Date: Wed, 18 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734484553
