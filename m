Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCA822F01
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770393834; cv=none; b=R9GwwutNFNNA+OI2hYzJlpIZ/8xBxtJQ1hTEMd5uC1IxqWdLgB9qQ/OzTTIXJasN2Y1Es5IsxIvvpHvUMODgots5LymJHonepGR1xl+1mFkO4z39dRU4jQT0mxAtAWGp/h3PV6Ew3ukq4ktgDNnYaHDY4mqRMXr6pKTznTnrDoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770393834; c=relaxed/simple;
	bh=fUsuElwX8AsArNj43HqLVo/jgyGcZR/1JBLjva3h294=;
	h=To:Subject:From:Message-Id:Date; b=GvoGtWNIFE10ge6Z2Fsx3XMTzFf1FTlyGklevEsSc9X9N1HY6qLMQXPR/yp+nqtG7HmZfvXZ0y1+y0xHdhLq22m1LM7C2qUDf+F5hOzwlwYBi8RCOUeDJBizDQrDk68cB/Jt3DsDoEsu1tFkcV29ZIRiF1Y1iCNN7/TDlTBTtgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5mNPQ4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5mNPQ4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79F2C19424
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770393833;
	bh=fUsuElwX8AsArNj43HqLVo/jgyGcZR/1JBLjva3h294=;
	h=To:Subject:From:Date:From;
	b=k5mNPQ4xJ+XQQ+Ry03Bn5noOgKUF0niuOeawrRtGs5Z3rku+QO4GyZ3HXnM/9P9tj
	 ObvdId464jpfbBL+fdwOZvHvt/WmEE4mMVqfuXv/FhqlaJVK2FjI83HaWdo81F81/0
	 tSwcXi7COCYX0LuzwlrGI0El3QGJqGm1wYS1gyjotWUGX1mdw7vbqtK+w7+WpCckPq
	 tinfotuDFPxWhCNWtTcas88Kohis1y27WNfC3sR18uduhcvN6IK76XAp2YznOmnuAj
	 wew4wYYuCDH39NkRqoNd9A2H38yvIeYZsKQ9/45nV7/2aHHljvctUZv0df+jOJIIij
	 GtcRgHCx50OyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FD2EE20B3
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039383365.22942.8077137256324535650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad00b2e60d2bbc7a8a54e58f432ad1fd6e68c6ffe419598cc4665d8af14f72c
Date: Fri, 06 Feb 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770393833
