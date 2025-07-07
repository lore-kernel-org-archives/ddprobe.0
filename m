Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2937114A82
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751868594; cv=none; b=AdY/Fw5htMdmLOV6iE0VwdYEBM8HhfR7ZmeDzhrMx8HpyOiobidIt6eH+rIH871gQLlv+FxoQdtuvIlm9IhQuRq3XkKlX95hLmSi+T6gGZzCRqcOvoiKBSk/BEqGOPQ1yau0NyUn0Cm8W2Z6txQ8aY/YwOXvNkmmo5oQEd8GTkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751868594; c=relaxed/simple;
	bh=Ax28am+s/YglB3UtJK+zsz5bg0+ykWAz9tZKalZEqLY=;
	h=To:Subject:From:Message-Id:Date; b=UrIIQ0L5SVN3IC1Hj1BTrSqY3QSVM50EJghdOQkFCCvUILmhUcuci+T3KcUlkP551jfKUJGWYmQs4OnudMouc0C95zR/r9G6cGl3Kev4aY1e+RkAqXrnyM2J1bOyDj3zUFVBMkS0Iaj1jsYFeFP9An23Pacr2T+SRy4hBORD5Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0IB2YMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0IB2YMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDD2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751868593;
	bh=Ax28am+s/YglB3UtJK+zsz5bg0+ykWAz9tZKalZEqLY=;
	h=To:Subject:From:Date:From;
	b=h0IB2YMoGkgozjCSgwAgfiaKIRDuhBlWvcBgqBlctLgXaoWr+OC/Dzdo3M/fj84R+
	 j6IP2fW9M54e3Zbu+g9agzkOiKwoJ19RHzpSlxlzAA3XFr9SX9DrOyzD/9aOQUv4UB
	 VuOfO/GZoos4d3DUd/8bsW/eYnuBSKpHrN4+kK9youZfXYOFlqOmySWjvXqRm2Z8I6
	 hW6DUOEIGjvqRnHHNmkbYJ54o5v9wQrPBiyQwy/nETZ1dqDczSYlHlYMluc3CYMCiJ
	 sy8bp7D0ihenzYoFI38GO/po1QK8GnHVBSG7y4ZXVPYEVbY267uOzqojjbPs2FxGaa
	 ZFwLr5eU1xLMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3DDC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186859357.23467.691101967317137102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac3309d94cd67f817db2f859503048f74dcbbf0ff9afc734858d4f40a996b78
Date: Mon, 07 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751868593
