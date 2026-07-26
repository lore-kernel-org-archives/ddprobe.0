Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5310F4908BB
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785070834; cv=none; b=JcpBD1SRs6+VC9PfyhvAu34uPTk/XnGtSjw9a5bVZuq75ws4Uuui8QFXdQ/7ZC4Vo3cImAU0H4HV65BIzhwN6gxC1CqsrQpRuwlXEb8JGfjO0StRStLdDARDHfrh5cWmm31SYm7Gp6mNb4JXxgR1Wnhb/z8JWICQlYKnH5aL5ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785070834; c=relaxed/simple;
	bh=efub95Eud5P0bXaNj1x2r07R2nBoMqh/U5I/jNC5hsw=;
	h=To:Subject:From:Message-Id:Date; b=E4vVEIV2LCWHxaT+0IWRSjJHgqdt8ogDmX3xE5ytEn9GdkHz9kpvN6t9ca7RZwb3B01JrXqZTLr5swDh+qDoGvnvr/0M/MiH7+fjA9eQEtBEmvP7kopG5RKkU+0mibZpQPNZLHGnoLmRg1lPMnpWbpykpWN6g7YdV8gUi4e74U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCg/nNzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCg/nNzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEEFC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785070833;
	bh=efub95Eud5P0bXaNj1x2r07R2nBoMqh/U5I/jNC5hsw=;
	h=To:Subject:From:Date:From;
	b=UCg/nNzPGphgMYLdCu3NsGW3MAd0MrpEbcPktb7AR2jzvLxXXIXU9JCH/VNCsSYQT
	 vHIwONvdkrWOz2UU0hen/r+6qGU0iyVSvlN/+C/zdtcox8d43SmeXLlfbZSFd2wXlG
	 vDHAsRP6f3Q15PkZlA6P8i5DFnCFfej5zkQYZ1ZS3CTmD85Fq8cXY/akl/FrLLkldB
	 UrLKVl5UCPE8ddPK3ArPGhP6AnlhXL6HDp6E/ooC9+87+dZqn00X0cOKzCXDArxwlM
	 CQDzp3SWI54xzXyh2cGCulkKW49Bf6rmJOf7vfhXJAvkErbjjFZ5fHPAUPEnSRM1jq
	 mu6qIruhtz7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89ECC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507083368.20861.7440812095667617696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffe3eb906874e208d73a77097928dfe22d35957a820740bbae4efeefabce5b2
Date: Sun, 26 Jul 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785070833
