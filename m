Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD218C06
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717197863; cv=none; b=MbdtvzMILavz8RIhYk0cgJ6otWKlhhVBSn22KXG/sSWzFKrCDO9ygBQ1vd8Q9SLRUap2G1O3zBDi4hCAVD1d2K2S+BNdWhQsYA8dJ6r8eVb1SoHwHLC8jU/sRbKJfIk0G9xzr1ri0rX8ycRUg6tQaQbiIqOj35XfphQORnn5eeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717197863; c=relaxed/simple;
	bh=cGWIIk/0ZQanCElI5gUGfks7FxNoCVBRbQJlOpMGJ90=;
	h=To:Subject:From:Message-Id:Date; b=M7KlBGjviNDMe1o5lH2jtmnYK+3oa7Qwuue9OkA4VNmFpdXqCZqutbfXG4qGDAqk6SqfnZeyTD3T2OsTblrUR52sUxcBKLwJaktk/Dsv+NSoXrIvYvrhRTXDWut2T4IIKOoz5ATlt7fR4KhmW62H/zfH30sbzRicO9ZtkCgSFQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3Lgg5Z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3Lgg5Z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0349C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717197862;
	bh=cGWIIk/0ZQanCElI5gUGfks7FxNoCVBRbQJlOpMGJ90=;
	h=To:Subject:From:Date:From;
	b=X3Lgg5Z+cUMMGU2Xdi1On6vpXBNxvu+0G5fo1iq3kGzmK/rZ1ZLvVF0ygahv044X3
	 lsI9yRW4L8ZrQH/JoKZ9JO3Fa6ppuIhOtsFbEwOMbALkdyXv37dIAgVh57WY1SuY9D
	 7a6y+0ffk7io46cEOhq7E9sRzsTnUhkfAaWluAHwqEd76W9cyC/nGkOJSqUMMe/+hX
	 4QAEn4rSdMGhnoJIH3V5yIZjbQv6BWxzGMnxsQz1GpGgEB+VSUDeG1w3fOtQX/0WxO
	 +sjpYI2gY3y+CmHyxlaIiEobYOQrbMoNzQ2O+0f1dDrRFtKZWoP4IA4Pvrz/gOUljX
	 HabbRlB8zw5cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAD2C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719786277.22615.3494714004767772426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12b23388e4c872e340f359180fae5efe432992212cbbfc119677014f1b0a068
Date: Fri, 31 May 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717197862
