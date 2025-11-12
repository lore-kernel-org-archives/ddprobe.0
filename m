Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCAF2D5C97
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762953594; cv=none; b=aMZGF+/s8iPdiDjMxj2lldh2JeAkk1R9gf4JeiJSN5uw6D6DzNaknh9Dt/fpp9dM+dniLJw/fOFG6604lnHIzSuYjJeDB2CrGCBpcbR5WKirNepbSD2XbGSvlHmlzUOZ8lSl+BT0VNiTq8//UkaCNPrxfMvTfs4+oqGi5uDHn2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762953594; c=relaxed/simple;
	bh=cbcmcQR8hKXNJiIEK9JzGBP4PiPR94eR0IzQG2RzTyc=;
	h=To:Subject:From:Message-Id:Date; b=KDhC61KBE7sUnuDBYc16cJlcyQXlGfBV88+S7BON3ZHpQPfWU8LQq2sZzFdM4d1k5dtUCEaImfRpBKWksDqWHWFTl5NA8Lfs4qMiuhYgGCd6pGjRq624DZhuB9z5MmG56pS12UfRhkwDiKYZMgrIUFu5oFHqodMe5qqRmw6G5vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHI6aByy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHI6aByy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB928C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762953593;
	bh=cbcmcQR8hKXNJiIEK9JzGBP4PiPR94eR0IzQG2RzTyc=;
	h=To:Subject:From:Date:From;
	b=XHI6aByyrPTlL6hs2g4twiSvVfCRyqDd0X8z5YIMaPQNMYVMqRvFsy1Nd22Vuegsk
	 GdYHfUsJES/j4V/hCEXXWkPK6bj2ayCZrr1bpeu2miQH194CfPDvdhrGzP31QW4ops
	 aV0nKHidko3p5YsG1ahFx+4nwmaCLAzHnfx4aOVu5Ot2YfHrvynj7bBmLYco5BJe8F
	 cxs67V5WLnKVTDneFCCIi5LO72yzCYcxz1T3toW8MIwFYXwY6+DIvJCNbhYwzcnaDr
	 FKJ7WhUFN4YYwjiLJ12b1TW6vSygzLJHaA0re9UUkKCFD/ACE7J2XXXFo+mJwEPA7d
	 GZdd3cF1n5m1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D235CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295359360.30868.15643781532022928863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9615f0db7699c44973cbf29de140e561277441b606c8875e5b62e337649b5041
Date: Wed, 12 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762953593
