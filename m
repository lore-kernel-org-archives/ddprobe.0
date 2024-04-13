Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7893D68
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 16:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713025763; cv=none; b=NlYrjS8x4Ny3mEK3ii2nHy6rEAi3fEV+ydxkqtObCKL/gHwIRl5kY9jyfdBAjDSHYS0NlckbEFoofNAyyU/b/m5nnA93LcJRqEVUs/pZh1COqSfCHOD/Ckwy+8xGjR8ftKCWexF3XOFa8+OT/IYv/euRpM70Zk5mPEH8ePzt/3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713025763; c=relaxed/simple;
	bh=yGcCEzrCSEUzBmGrydOPUYUBrTqjWSiQzPNflO7q+7Y=;
	h=To:Subject:From:Message-Id:Date; b=KlndHaBhzDv2hoxyV7thn0f7hwIOUJBD9UBBFSRWHc83p1NLvsnmS0kTl6G8tQneT+dwvDU8NpkdmZceRADU/s3Px5jWTH5xHo+XXEB6yRUcdc4sHPQNi5vzzDjNiKOJyYfBBQ5R64QCgCv1JygvSPHgdVO1w51U01NYjpZH/UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcqSDvnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcqSDvnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC10FC113CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 16:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713025762;
	bh=yGcCEzrCSEUzBmGrydOPUYUBrTqjWSiQzPNflO7q+7Y=;
	h=To:Subject:From:Date:From;
	b=WcqSDvnmsb9bqEvAzH8aP4MOuTRXbX7nkevoogwl/9mKWFM97wAmFSw6s7dey5aOw
	 uoC5KkNvw/3gZFFouZWehCJiBjKp/QUzvja6nbutUkLfU9TfUU3driPrMdeMkTTr5j
	 /1dghLJlDJ5EYYsS+y0/Pq7pyuJv97bLGSA9/PFF8zR1765lK5FJu8ydaMJr5TuTiW
	 YFULIRPOHdOZxBAD6rhOgIlqJu1+X7/TPUBWLI0lnTiSQ1IReqyWtkZvw4bq4WDnXI
	 RG/g38bE9XkOb2huJbf9onnb+NF2eck7M1t7/peJeXkRDWZYuutUElTpQ1gDxCKOkd
	 zQpiQGIRPRKUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6552C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 16:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302576279.19485.5506007525455673743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74cbc829163908989ca463d773d9d555dc6e9ef2355de2630df32345812b501e
Date: Sat, 13 Apr 2024 16:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713025762
