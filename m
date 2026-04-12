Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B81A25C6EE
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775977654; cv=none; b=MNg9rmdLNonsjnaSmH9mnjXmO14vpQ6u20a3phZXC8YLmg+mQn5Z7yYGqwC0jhnMC/C+amxtMH0mMP+vtqekbL7tEKXM2m0TjySFfHocCAgMGRulxNO9EMPcKzxzksiW6fMeyOU8ZIZ4d+3FPWwiIesk4tsLyPrXBy5ht9oWNns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775977654; c=relaxed/simple;
	bh=A2qL53K2pMp8qb93BmWPOSRGn+zdsFv5Xuz/AWTpBKg=;
	h=To:Subject:From:Message-Id:Date; b=q3r4cIXOxaHBifgADaRHjkT/n9K+WQN9QlORwavO65+9KQrfIztXBh6pMQ05XMKbMPPZsICqbDCZw16SULYI/On6fyeN2zIIdKkon2WBFOnZjV5vjPwYM/UwZrvIlIKQUliIgqT5aYfwsAPqvG4pE58sUUyniLMaKrFfQcZ3Cvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhTf8HJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhTf8HJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B0AC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775977653;
	bh=A2qL53K2pMp8qb93BmWPOSRGn+zdsFv5Xuz/AWTpBKg=;
	h=To:Subject:From:Date:From;
	b=VhTf8HJ4xZ2pVAQIeZvIgIybLSd4YynIkqwPikjgsRpBp3TGXyT+y/Uy7f5Ay5lSy
	 afSf1CfUvUzUHoHmIn1B9OAaZ6bG8NuLG72k58FgaCk+wejamFLNSByKNNVTxlmqki
	 qtOOF/pbL+4dWYaDBdWmWTAUrhTPRZPG2+R2ytm3sKVR7b3HXKyO2pj7KtJpZvncax
	 VT16CY1DvTrK0A3+cwcMIzPLpCXukKVR1Ftg3a5Y9S6MldNc73ipH2ugOMIbTyjbTG
	 DifNx1+Jux9Ibm4XmKapvTMgvk0YHYNRmHTjQpTJJJaF5ba/YMfL6O/j0aJDP9XXDf
	 clk4czUlpR+WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44AFD58B04
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597765369.9301.16744953859724529294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9adf2aa2af29e0c4658cfdf157984145b778509fd11e686520aed71bdfedd8b8
Date: Sun, 12 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775977653
