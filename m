Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A3C31F9B9
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787430034; cv=none; b=bTJikwwcH7pnOdSHpQ7yRY3aNeRbK6PmcL8lzQk2BCaPZ5QjuiIAmZvtS0REtTIBDD0V8BkNRJRHjb/Kzbd17Xiyn0ON/sruyH7egiFCm5PMyQm8z1jUqfHUMQILaS1bm6iuS++dYDzSBciJmFnc/pEDGCPuphOUfc5wy+M4JyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787430034; c=relaxed/simple;
	bh=JJBeS90X+BzIXh24mN+AgtMm1XwdVzfL+1eZ+tybmSg=;
	h=To:Subject:From:Message-Id:Date; b=Wh1BpGL1Rw6V63P9ixBJZEUXig5oVvtA1jdND/fskuTQ/JlSABuRnBrvguPZlxU4u2kNbcTFGsokCu24YtOKIUq007XuBUvcwXozN7URI+j68DTDJCBSNimI5AUzXmYM0KocFLmc+wlLjiGzqcYJgGRCr9vzwmmy+/Y6+91k6Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy5Dn8ix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy5Dn8ix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF8BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787430033;
	bh=JJBeS90X+BzIXh24mN+AgtMm1XwdVzfL+1eZ+tybmSg=;
	h=To:Subject:From:Date:From;
	b=Wy5Dn8ix3iGBgsE8oyam1WODRe5f/82oiToSWKA1dukc3oBgv6RVeUQLH/XmqXlP1
	 6wg75BJuihiw0iHBo/+QPG7WdcfCbXh5iMx7co7DG09zrt/ioRZsff8dtFWvehQg4t
	 WAuuo5xnmeJVsEzoH1kbc2PtEGgc6J79TITyndf131zgcOeZ/fJR/okhZIpKsV85EY
	 JnQcwXB4RqvJ5tgKjYKXbdJb4vvL04lBXnLpUoXrkkEn81tLIFkrmdwbv0ktwMO15F
	 u4qy0vjYVPv1T6otITlq4taPzgA6ai2oUk5doP5IYlo34Wr5UeLtW6KNLfP7f+hNtH
	 g/2zAC/NZJjWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA24AC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743003371.26781.16355091322682114253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02fb2d6eda70111ff7849fc4e0122aa18be684e129981178e302a964afb9a51e
Date: Sat, 22 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787430033
