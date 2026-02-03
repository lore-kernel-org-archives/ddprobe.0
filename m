Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43263002BB
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770153833; cv=none; b=MY6ENO6Bcgv1xYqW7v5tzEckh2ho0dsnZvuHie6EMFg2WnflztA0yCmbxRvk6ja1QOrXJ+qMi6pNrnn4lecbrfksTYMwlcGBCtJBKWC7E6l0R/fvbnvv2yt+gCTnspBcn77STW4f1aqHfqDSJGFaZi5ij0K1IsOMSz8Uk6yWgy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770153833; c=relaxed/simple;
	bh=+xDxuwzl5jfkAeuwsNaNF9qnyOE5xDgT0Spzr49yZm0=;
	h=To:Subject:From:Message-Id:Date; b=Eql8KfGghx/yrHuQErSzQF1ITz9cRLR32EooMYenUtxLZtlrcK7oqkBA+34wjX/larTyQdicEB/xx8cpiMa0AFSNN1l2i0Ash6UxR7wg1uIR8iEMo4fxRSVworvX97k1mayHy0xjAN3js+hKPsPXWup82pyQOIldb9T7bC5MK+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIgr4mcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIgr4mcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0C2C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770153833;
	bh=+xDxuwzl5jfkAeuwsNaNF9qnyOE5xDgT0Spzr49yZm0=;
	h=To:Subject:From:Date:From;
	b=mIgr4mcLWWdACrpAiD0EFgKFvvqAfgbjBcUyZb96bzRU7nCWj4HkLNEDSCt1ZMxob
	 9OnBrAaEtUI1dG/fWEorp6wIxTjfzy71W1zw56tBylrsxPY20M7F7lbEgnxEC+Soba
	 arCgtvltwacmT1Xk8uBOLddp0hbkFvaCXXouLwZTh6pUa8yIIkFCDU0OgUe00g5Y/a
	 pONB0TYph66zXkLfnnZTrEGJV3IWJ46UrvxyaUIIVZ8RQMwVXX0zzt5l/s8paVBr7S
	 dAX6Rz/6bG2OosVzov6t2YSRNU67XLYXsBuQeD+PbdV6ywqfP2ZfIB+Uy2c5KclWzL
	 tDmjLb+kx3zgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FE3E8B362
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015383361.27340.6952767420331103196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512b76b68019fe84f7e70f7762386fc37ee0d82ee157fad3a1be6c6c7c8fb7e5
Date: Tue, 03 Feb 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770153833
