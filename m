Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DDE3822AE
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775633734; cv=none; b=L8wNVcrpj65oSW7B6LISH3b0uia9LrgFYr5CLFasG5naV9b3t7jB4TmU6PIeJc4JsK9DcfAk5T2K2EliHwxQqiTxJGbhPLZ7jX85miSqJntR2TbyMnI6IG+Z1omUBcDP1Ee/BdGqpH5lBKmDwQAIeNw4FM8YKiYf/8hWcisInHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775633734; c=relaxed/simple;
	bh=3dIpC1qLVUB/hdJj1EeRHyDlsP3XocOn2v1Co45kgJo=;
	h=To:Subject:From:Message-Id:Date; b=Llj2zt34AX7FaDpPew1QTsa4fLTYJ8I3bRoL9jSU2Ka3pw9nMQRmu+Md3UZ62wiA3ZGzZxI8o5Skc4WSvlSUYhPwayJ5f7cZ0HtyGrBiOSGZ/B+GTJuWVaDWC/R02pFuyqVBLjNsQlUIYU1H5oemijGWtpFgIWlRwWcZ9Vr5vBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4Imhuop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4Imhuop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2BEC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775633733;
	bh=3dIpC1qLVUB/hdJj1EeRHyDlsP3XocOn2v1Co45kgJo=;
	h=To:Subject:From:Date:From;
	b=U4ImhuopkYNcPJraew/poblAS5m0fCmaKrV99ulu6iP91fQd7zCybBlSHSU6+hd0F
	 G/R+9xL5mLlWPLZq8eBb3SHSkNrk4/eKiVH4KayHmYwTDCV6xGfe+Ve/62KB7AonEU
	 Em1iVvHV92n2LEfHZ37Kcg32+6f7Aj7gNYhYj7ervjZAdfaKDCJwfLHaqFyfyJ+188
	 VObf3t0RnBBmakD0XtAtfZEsdRO76qie9BHrb6rCYIfFucAAVxADGgq3G9HdSZfpYC
	 Hm6RsnxrIA4XI7+HrLy72s6DNyQXY6DppfcgwQ/vVeQI5Jl8tVR7s+qQMaJVbxOpRx
	 FbVwddf1VvTiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A6BFD5F8C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563373374.4864.1926655383763226097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b7e0c26045af84ef0aa02dc2cf32c8203441ab0397f0cab7056db36bb1a865
Date: Wed, 08 Apr 2026 07:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775633733
