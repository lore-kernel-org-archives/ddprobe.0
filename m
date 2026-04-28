Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D642BFC85
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777417054; cv=none; b=ed1mVdspeMGB3tOxmgiFKkrBioq6WvDfoFw+BEJvMGRYuOgizDh3GusMK57EiMLseTS9D5uZU1cc9X/2jDMeZkTLXnDM3Ob99yAGBPM4WrPo4QephTv6m1EDDA2WTTHwhDHehi7DRbFd6B01F40Pz7Glv/ORIH15ersAB8hFMz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777417054; c=relaxed/simple;
	bh=OUqr1DCPGHQERsQbmUCojEIDhyYuh/LkmHijpG9HoWQ=;
	h=To:Subject:From:Message-Id:Date; b=Ly9FlmmCO2KuTQZxJQxGHgmSA2SJKIlTs4FEGlpHo+uA8vhrEW11mqgPP6ZtT50DhFMZaOCy7vOiIuAri/gOTDl1R6FObsUO7KGywspzCi6bIbF4qOM04xewVtaPM7dZmJI/cix9rGsKQ1cfYGluTZ0JkV/6b3XwoB7tv7gqloM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhvItVJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhvItVJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAD0C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777417053;
	bh=OUqr1DCPGHQERsQbmUCojEIDhyYuh/LkmHijpG9HoWQ=;
	h=To:Subject:From:Date:From;
	b=GhvItVJ6WWZE/k9dR2KuOpvDSptvya/CSUmyKmJ59DKZbpH97ssapapPli7+orpN/
	 y1FEh8/IV6BWI9j0z2cPvPfkuvMe9RPqBVJ9bvEAnAzj2jSY+nGjCNugK7dQFlLC5g
	 hkNfENqEoEhMvKkCXcGFkE4hkoysf+6hxkdbRGRPXzS8bDNk9VWIIXHehAtpQZE2hf
	 8KaivBeBD5uUg/dM9VN9qve5uGbpmjdhI1KgC0z5eV9JQjJvZiHGcFHNlz9eSue5Xm
	 V0YbCiKbXZ42JbZZ4BcqMdQLv2y+oosiio3ZvXmJEyLEQwGCKhFMYVNVeihkdflkHk
	 uML4ccfbFQCRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7FCFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741705368.14685.5837125807577382930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52c3bdccfa7a2bb0eae26661ccbfd685e660b873e1f22d18cd739f58cba606d
Date: Tue, 28 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777417053
