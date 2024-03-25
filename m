Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC2C6F085
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711408697; cv=none; b=GEzKn/fi3VCcwpZuWB5bccHfQd5X9NlAKTYQTbNNUsrZzgh1dM4eQlBscTe6tBqiscMMzOSEiFKrtkUR/zh4n+/jAtbiwADFnZ/rnx7h3pstnTAw/aCoq58Qu09d0T9s0ddTHIrpS/St1mxpAVK/uBM8cRIXS4sezVEMpyWia3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711408697; c=relaxed/simple;
	bh=iTNHti+U+MvhTvLBoaydSL9WxBGK9SRvFGj1bpNuF4s=;
	h=To:Subject:From:Message-Id:Date; b=QRujcdOZpqP8T926RxDEGYZTYGlqGQDv3VhI1s0QyschQHmqm05HWTxXpS6ScmMmY1i856MqyOBm+qMNzJfuZSxxXQczOtZsmOIryzzXf5mvERRx5yQ1uOHE9cD595Y8kT5T6A8cFplVJIxOeK8lBpn6YOb7cIIeOO/5uaAhffg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9Y2ZgZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9Y2ZgZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B2EAC433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711408696;
	bh=iTNHti+U+MvhTvLBoaydSL9WxBGK9SRvFGj1bpNuF4s=;
	h=To:Subject:From:Date:From;
	b=Z9Y2ZgZcoiG2sRRXEYpd37MbvKyO9/leDox28sT5W2O8fj+O2gCs5eB8RbxsThv2r
	 +WAjfes+EF5Vcsz7RqWXjWX9nTHfX28boDLy7PiK/o7g59nuCIIJ/n24OuXuh1TPwZ
	 i6K1/gzc671adCK5TKpsNnfbVkoJU9tGS2jIrJZSxAjkdYJDe2L2SszkWS5G5lnBkx
	 Av8Vse8RliU7ckM7yUs5rb2uAqNJYpWda8YYKGcBlaYFHc1DY5PcxwN+8MKic7NfFv
	 gWiq+MXySLk3gNT5btuZQbM8Kc279mb3q2R7K+D+sJLtCPR98jID3AqVjmvg5X/R68
	 TjfURVBq+vO1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 767D4C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171140869647.1350.10745684952082021472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d94d3c7eb674352f2091efc0e6357528a0ec2b637cbccb209df859c520c988
Date: Mon, 25 Mar 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711408696
