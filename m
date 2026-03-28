Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C16222083
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774674294; cv=none; b=aWRcrK2sz354Vumk9zZ4adD2Goq//cMihH8NFWp10AUwIBV+v2I2JJwf7fsFvu26aJ90QlJYIY4Uu8hcI8BkLE40PQ4fOZfy4Nbc9s2GxIusayUpSHLwHZtfn3s7a79ERzJaFT+RorxwdtrGpl2HD0c54wsC851iWKpYEqPOgeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774674294; c=relaxed/simple;
	bh=WMN63dGm7pS3ma7+UCTZVeRx8Tbh6JF5UGf8x2576qg=;
	h=To:Subject:From:Message-Id:Date; b=r5MKdemON7Ea2J70t8TYJhiOYc8791uhoC9wHlBElXn6UwxKY8ODVKcUJv1sfR+ceXJuWPEhwRshvOXdXxoAL0vOrdDDvWojJKKKGa8FBPjO9UsdBFg2gmw0o52rU3Ddw9pKsARUgxrSKFg/J0yJpHnnPtEFu4XGD6B0+nOX8dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adX+3Bsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adX+3Bsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBD4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774674293;
	bh=WMN63dGm7pS3ma7+UCTZVeRx8Tbh6JF5UGf8x2576qg=;
	h=To:Subject:From:Date:From;
	b=adX+3BsjIzj4PzKB3CBr2ZLocLMebagVvzBZpydp8IvZJLEdEDSvq+G12qODivThf
	 Xx3CklrISkdnGvJJEtzGdPzpmGZ+ttzsBqgFARjacCMr+5kxRUXsGEbVDlb97W1oil
	 Sl7ooTNSZhjQBcYWFHr78lUJjES8k9mPpeEwQ6PlbIcYxPaAMl2PQJsr7iPzs2zYDp
	 H769A4KLb2uQH+NnL2JtcH7R3IJkXsiteWvDzRyhb8XZym0Qj1TuZeQbFJYYmtG60y
	 bBUh6c+b8GIXmeO32vqXN6Z90P6UzffgCIYVlRmC+rLeyzz3VUtgSJNC8mTpP3tq6W
	 I8ptIGrOEX5hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2A310F3DCE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467429360.6099.8906672220217103165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f1b29cba24b2afa9bc6f35ae03a73b4a34dee2c797914bff6d243bc9baee0d
Date: Sat, 28 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774674293
