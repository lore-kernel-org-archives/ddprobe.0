Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8656FB9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746190194; cv=none; b=a7OfU52af34pjQDZzJb+JG7JzQdz5yUF8KTiNwFE4HHJizooRSTH9CDiU1Fr23RpUR2ltUBOEXpRZzVe+HkxWo15f4xfz0BQ1znebUSTE2+X8LbXfjCX9ScUUY9NnWM5+CgOimGn+oiS2Ot++tvSZAs+r5cq9mHygR6zvQry7ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746190194; c=relaxed/simple;
	bh=oe2glTRz2am3ACXfT7HO6TLQ7YqcR+v6Wlr9aQG2UVw=;
	h=To:Subject:From:Message-Id:Date; b=SS1x1JmwnROi1kh1vXbfuOWpL/nak5jvsssReI2KiVQFWbiDdjhRUl/ksACLVW1f7KJUj2rmiEPaFx0VbA2S9Rc4dqkCr23KTbbhFYnGvfsahsUucpjIh1LUjrlhCTrpdilLgnEFBY1mgKIvZ93RfeNARTyI/g83mWOpKnkxHbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kC5J0Exw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kC5J0Exw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E733C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746190193;
	bh=oe2glTRz2am3ACXfT7HO6TLQ7YqcR+v6Wlr9aQG2UVw=;
	h=To:Subject:From:Date:From;
	b=kC5J0Exw2L5/dfejwt5KGtpAdY7sWx2dSnzCFj8tbrM1U5Y4I/WxowP28mT97OAhl
	 daKVugATC+tcNe+bdNyzl0wTHLeseFO1l1P9RHC7W0bLjTdsqC32RDDUUM3vi02Z/k
	 HEnmPIQrZTeL1Spm+7dRIsphvetVgHzYMVhjppMtnzuW5mrRiZfRCJuvEgypURjGGN
	 TqPF+MN4M5ok5IRrLpnTWdl/9A6CQEKjWgBmPTmo+YUnQ7pWnJXR3HLUPhnLoJbpqo
	 P6tnVsR4p37xTuGRv0LmRVN/XtV0xD17YrNvmr34lVFWNxzMquDy/g6etWW418zYJp
	 gOi2o/RZm8Png==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7FDC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619019357.27612.27422456696146288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5182034077fffe2a1d6abe647097a10566146a32111d47bd190daadd39dd180b
Date: Fri, 02 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746190193
