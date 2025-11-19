Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41C034F492
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763561516; cv=none; b=Yos1GWE1rinVDuhMGbeVOFuO4DsfMH7fWB1+Mu3nVEtnb1/EoFdqTdlv9/+1sCkKDg3mp04S1/DMZzrDw13u7zgIWhM9e869JRRlM1auiVenmSDNABuIaoAeyk/a1+w7uYejhbWgSpA+XfGeAoHn9ofBXtFF+0tEcHhwlWOCjVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763561516; c=relaxed/simple;
	bh=txxOEqNvwlfpkVui3KOWoUq3iBFKBseYJ/PF1v2rAak=;
	h=To:Subject:From:Message-Id:Date; b=PcvSGAMmEx/2J0imjMHz0Hj7uSpxqcFqPka09dFwLqP0ko0bMuD7iHHG2QBRAdJ/oaUIAnREjK2r5M6+pQ/x02S8LpLjnXnBhl/dtSQrp4yrYRZyOCGP3ubYdfYCja4NzRyUBAuG8uccgwLYIf0WZ9mTqGo0kyWB8Q3BnkeGqcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkhTyxTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkhTyxTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4829EC4AF52
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763561514;
	bh=txxOEqNvwlfpkVui3KOWoUq3iBFKBseYJ/PF1v2rAak=;
	h=To:Subject:From:Date:From;
	b=jkhTyxTU/C3xKX0Q5r/jzNKpmCFrLLrAowWRWLbq/K8dKOEPeC+zyxOW2ZvAMgX+r
	 gaA6XUEinK2PxMl6m6nG6dfONTC93aSr6Rl4RTTL4HEmC+YlnkeF/hPCdbMjvg/pVe
	 C7O7W7gG2mxn/wN8ornB3ODTF/BjjALv/lehpG8p0eoSTObwBLxyGjh43YFteKf5eh
	 hV6pbR1Acw1phbMWKoqegNWn1Uf/f37eZwwgW4hRN+X3a+/YDYvRji20SWJJhb/qrm
	 D5nOhNho99mOhzVNTLTInLh1v4gzB2T4Yl1wsZYyoWnI/vGbntuNsgMi8YuTYFDaqw
	 BSZtpESO9UlIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B795CF34B2
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356151362.21913.4258612486786921790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed29e16fb632a173f3baac671ce6de481e385bcb5957d01702e59d1befc17392
Date: Wed, 19 Nov 2025 14:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763561513
