Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1FE28CF5D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784504914; cv=none; b=le7wBlUG+k2tNLYI3PJlmBJs91cEaXfTGCVNZ1z6AxlV7HGfHL5124A9d7TwO3bRlb2/qlo8SbQUsUsilOPX/RZZHhWsAgGhEz19Gynbzk8G7Yce3iBF4v8fKNAwZyxnLBSx4K2ywAqC/T0ymALeZbYpkmlkLtcJscWUdE5YzOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784504914; c=relaxed/simple;
	bh=XW8AJhIN3uLwPx9BdyHWV8ocW02VPbEn3RPjxgVGdDY=;
	h=To:Subject:From:Message-Id:Date; b=rCoCi8Rcr7iIcHmA37m0iQQ9vQi0i7bEFllrLv4jIDCGVI16SRunPH59U4NopoGN2Sm8UFrwKkA0r62QVcilj9TvWr5zzSRrzzEaotlZMJTuEKYKC4Pj+hOzGOpEUrfnNBiIJgwRsXyQg/s7NyU/pAUtMt+rZoVOrzNM/wpl8Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8wL+4S2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8wL+4S2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21D2C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784504913;
	bh=XW8AJhIN3uLwPx9BdyHWV8ocW02VPbEn3RPjxgVGdDY=;
	h=To:Subject:From:Date:From;
	b=a8wL+4S2qO3nduQcqV2UNY3PyHib78uWfkc+m/JpW1bz5E4jhk+yw+mxYPpg5VsuE
	 1RIkutrNkDBxsaJsaNBWOCFhbH7+SDsm+GnAAN4ABT02yFgfp1CbzJW4+yY+pBWyfa
	 ry+zyRisPV08I1c83Bbmg35+AwDchCitBQ69ZiuFv+n9Yltiq+pkMohlhCCTwIy8A0
	 wgX2lQGCSVf9U1ta/Geas/2CR1RS6feXT9p2bfWcOMqTfbhZkkOxhTNG8Onc2A/4u3
	 JGaGKHMwJIbTq9mTHBjm57yUsYjERvyUuZvML/b7B+qcTmvgdfH9ypiN5r2SLwtx0F
	 vjG3GyWdf6xpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE7EC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450491368.26962.13908595957643152568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301a007001101718dbfe9ce6750f5c7e9914119e5ecefe1fe36712be4a545b8d
Date: Sun, 19 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784504913
