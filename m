Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497DC374A08
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792336834; cv=none; b=txZcHiifLBYHN44yGcAUZ1MJbvThan/6I3Sq4mQzXo76rTBYj6qXPCZNoM8l7Q3iCNbZRwPc15FazQ058u6ycztQy72BZOksPyjy6q1MGDmURcf/7CMcMBEdiGZncUwAHaZQQm02S/Ld6uWwQG5k/rJbWQceTQJtnKZOhEaKN8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792336834; c=relaxed/simple;
	bh=PZ2+WyDbgCMLX6GMoaw7fZfQ/7HR4EfQ5p6+BiDtUDs=;
	h=To:Subject:From:Message-Id:Date; b=RKXTaBnUvlOR0eUfHpLUG6G30mO96lXh1O5f127LsxCGkH/TxpZ3Sl/s9niVR9qSL1yMRUQYAOzA8rgwOXqVczlT9E/+mK3JJ7nzHbEW00i8IvRPQYvlYwr4gdSJNSeLoCC/LUgpB6fv/qEujBOt9wgwHBFGPNhQJyKd4Xk0RRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EY1jaLvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EY1jaLvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DA5C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792336833;
	bh=PZ2+WyDbgCMLX6GMoaw7fZfQ/7HR4EfQ5p6+BiDtUDs=;
	h=To:Subject:From:Date:From;
	b=EY1jaLvVI7lX08lf24Y4/rH3EK9fRt9Gu6IXMoPz3CvN7ujCNlbtohcMd09LDd6kM
	 BpnG5B5OaO1sxeTIxBZrFpyxz8MNjz72y0sRv1ghLBEivbEv/c1ie7tGp/fhL8A5EJ
	 tWg+ZRxh7RgBDrOa6t55mlANPFnisY/Fx8Z06pBUrIr1+j5UjN59bbAd873XzUsb7m
	 OEWATFnm/fruKsUa1pChn+38VIenU/uDcyq/ncYX943de5Rtcxnhz6kyQM0OMEBv3e
	 u4uHDiP5FvAzYZo0n8TYq8Ayt3WEhvANEv7oEDeLuLZwiYTE1Kr97US4ORRPZ7YHy7
	 0oM61porD7n8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC9CCCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233683368.16164.11094692757510359914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b541d995b951c9de9ccd7d5f08a68144c4e8f93c66cfc9b5c4ab3189dd933d
Date: Sun, 18 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792336833
