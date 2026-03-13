Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAB634C123
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773425694; cv=none; b=OSh03sxHNewPdt4XYwNQcatENVWfOaZCp0ok6jPw2RpMbSEkCCJFwvRroi4dx7rlKRYpggujTsaO7oHRSxmExqXlIEfvcfA1uidPsnOPsK46bHKSFFb0p0BYKX03jpdni8K72JRfiNgwnBrgZyPgv7R/RM7jsiFpRBL+a6808D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773425694; c=relaxed/simple;
	bh=k+yBw+5eqjFp46hbPeCzB6Trh+OgdMsYhxZ2ov3XK3k=;
	h=To:Subject:From:Message-Id:Date; b=n5J4QvmKFxkCTBwESQEnvcCGgj9Tg2KsC+EuO4XBK6UjXsyfzOyRe437qW8K84LkSp032vMk6uDmx0cIB3jhxOaNISE+cK2S9UF0nH6j01+P6GKYs9vHbO4PbamgaajnbNTIzRoknAbdqw/zimlcf2niSS3OrQnGQ+Xd35NCriU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1qWFwTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1qWFwTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B5BC19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773425693;
	bh=k+yBw+5eqjFp46hbPeCzB6Trh+OgdMsYhxZ2ov3XK3k=;
	h=To:Subject:From:Date:From;
	b=c1qWFwTQwg4FxLDbsmLPnp0kp4xZTf7L9AHYH2PClKsLipaFx4KCGAMCChL0/cjMK
	 eGv8sR1msndgmRb4Tw4FL8HovjXrbFetO9VqQCFEIMMNWQoKh4xo3s8B2suwBz1t5A
	 ya5Rw+zNizlvhKQJpZOg73XuaE5OzWV4+B+wKh/9g5W0X3HAoqn9zKtU+LkMTVkqad
	 0HQvUAYQcYGvQhS0nE7zSPQOTgl8+aMB/FnNH/Q+UQWlR1IIuN+sf192ri1G8J/O4I
	 bWjJZfU8J4ZDzE5r7npkCDedLAXBECNBg332yvP4deSROLgs2mj0nJV13FEOVD+ryl
	 ocJBbQZEFjkqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F69107BCD5
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342569358.9089.4924513760729419110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d7a2f51be3e1fadb3bee11a5142da5936ad3dd7ac5b6676ae261ca79330647
Date: Fri, 13 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773425693
