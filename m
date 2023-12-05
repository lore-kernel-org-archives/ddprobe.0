Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02ADF3D3BC
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBhlDtpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7936DC433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701781096;
	bh=K81GPlyrGf78/eYodnQqPMjIdyU28c/GSVFPEwicabc=;
	h=To:Subject:From:Date:From;
	b=dBhlDtpJl8FSkAhQikz3fjIKFBz8tQTVOCWf3AVV+bK9fucpUMLWFQlyHcRmfvQc7
	 gGjwZl0TeNzAqt+SFS3fT8zcXrND5i43nO3Ae/64xb9d3AtAV0jC807ou2X2ISGuIY
	 6TiNdk+wCTw0pGemMWPQ3Yqq6bXfXBYDurceG6JNAj9k+KYiKFJSsRRES4nuHOJOQb
	 vclNhV0YzDoZmAcTXceleNbH+AjP6ewLgU1SwndeU2Uz2ydgQwJakVVTzIZxouQCcM
	 ICRxbXS3dAy7lrSY/PJK4SFH4va0y/Gnw8QOrHeRf19onFMJL3Te9CwjSzS5awl5QJ
	 wMxAC0aofI20w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D325C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170178109637.16292.10913647880243649391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba32d73f3e1872c8c32a358011e0343f03ba5bcde0e41bcc076f2760907de51
Date: Tue, 05 Dec 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701781096
