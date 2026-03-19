Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6573F7AA1
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773952494; cv=none; b=kDAxnIGck40S5TQGTNANdSEYbKdRIpjVrmyTxxLeRk5kHnt+2/79HfKmLZvWdcBgE07Mre1IJi0XLRE3LFwARClxLjhf5cpCvthyYWI9+bEB7TePaMeCKiX3OmqmHpXj+ystnQ8Y3EMALrIvKtlaEviPes9KdznLQ1qBKyrZ02o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773952494; c=relaxed/simple;
	bh=IoxpTcsg6YNKpI3nSrxJ58NnQ0G2cST0Qh1N0rwZNZ4=;
	h=To:Subject:From:Message-Id:Date; b=qOkZLqwBzn+L24qwSdTM82nZFGjx/KZTPml/H3jpcJ38e3vNGuSyIhNO8QIxNuZb0tuX4nvUbkrqnLzB+fD+BYJVgU1KK5pi/GpTGYGmJEUs2SIRgwuzPZR4SoPyzqUlWLdJgDUBZLHpsoy4D2xSsC6YNLdTkqHlRi++WMGKexQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNfxG45O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNfxG45O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16EBC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773952493;
	bh=IoxpTcsg6YNKpI3nSrxJ58NnQ0G2cST0Qh1N0rwZNZ4=;
	h=To:Subject:From:Date:From;
	b=oNfxG45Oz4LdQ0j4Uyud75bpGHIfNDq7N4jHoHUaby4trsRNrhLPXs3+PLYN+0VhA
	 sm32rXliypEb2Nz8zG8xuZT5YSnQAzAT6T2pr/8KZRXy+uZRBUbPDi71vKE5Bd3BQf
	 FEYtjJP6IHjziTQuduL/YoqRNsSWM9fMagEslNIaSwBK1+xz7B4uMXo+lJ9D6dxUlU
	 /8hlMS/PWwvwuik0oTM64H936KCcZ6CzouBFjW+Q1LL+emY2Tx8q4kHCEhq1D+HYFx
	 AxC2HtNOJV2WgbptJQgQGu1TwBeEN/cyapKUiu94pKvj8Me3MdT+XUoNxg3k525BNw
	 q9TiDrze+FBiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA5B1091912
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395249357.29090.14739885939143507417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed53b6dbe7896f28b28c787ef2473c2864109cb09f90a99dbb9c1699cf524c6
Date: Thu, 19 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773952493
