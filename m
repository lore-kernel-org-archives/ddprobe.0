Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621C4C8D7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717836443; cv=none; b=TOUPqhpxY3KjiWBbaphmG3XM3BfyQyvZJKF+M+sLP3ZcdSD9a3+/Tz3RxFgxGk/az+sfkyr5EDdXBNFKAFn6V3W0//avsBwdqw22qSq8XNaEBa6lgxcLE2E9W6fWk9Se02p3tAnO+qlTDTV5od3lPBLeSE4oWt7dC/BZvJh9E4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717836443; c=relaxed/simple;
	bh=m3Lm3Hxv9rsVB5HvN3zuFI8dk0bWbI1mjjXc8t8WCUg=;
	h=To:Subject:From:Message-Id:Date; b=rb9o+Ika5faIRx8C+4vIB0B9wwEpPYRNoEu56E/wsndPVAHBrpdHc71hwjIXiqWYIV5f/nU/PkfqbhT5JZh3oMtfJ917XYID1QutPzHoLP+MoPa9rXxYQxWp0QfftoTIyNchqa9rRkx2kulm22fpxNd0GyI+FUVmdNeqS2/MPT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5V6xAd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5V6xAd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 028C3C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717836443;
	bh=m3Lm3Hxv9rsVB5HvN3zuFI8dk0bWbI1mjjXc8t8WCUg=;
	h=To:Subject:From:Date:From;
	b=e5V6xAd7NCQi705c0lJRgH1OYS9pAf8vOA1o+kO9idsq0T522Gz1fAl5WO7UN40yM
	 y9tLJRW34NhlIyvuV6ZoCHHbR4nuNDA9lPpL4qyi6jZhm3byCW/yeW1JKB7FXdU+KE
	 y9qk5G/bSMxb9/gUGkT74RFYkM4/2mVFLS53ic5GVMyHw5TbO5AibFxnz2HrOwdmqc
	 AdxzcDg3/xLXlpho20wGgYm6bTpoSZXYREx+eF1/jnPJsVqYWGnKup36WsX0FgxF6z
	 AZWdBX/QGUBDFhggSXPSojH5ZUL14ma0/CHet1Gz5PRoqg3h889yshLGRXg4BEtGf8
	 rLulEy9WCHnJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBAFBC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783644285.32349.9445124730628785464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d7058f9befaa249a38c96e0ddc0ee75a9f81f2d913062777252a6cf5316ac4
Date: Sat, 08 Jun 2024 08:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717836442
