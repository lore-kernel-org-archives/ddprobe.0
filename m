Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D35E315D5B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771367094; cv=none; b=Yqu+ORLvTcOcdFUkp7B7Gvk1fmDELEf0jdTGCLec17LIktXNTlJE1XIOE82mSD7sY+nQFkAehWbrL/WTpC/ql6lwu8RGVLCv2DAX7a8VRdyEgyiWtCSfvrY/0NUvTIT/LRuuAp+7IIb/SFdhD7rztaZKn/B15s7faeVZR0pdlgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771367094; c=relaxed/simple;
	bh=+zNYTrvm7wIxZA0DMCfgjgdGmnSXgkL1uYU0+pohi8o=;
	h=To:Subject:From:Message-Id:Date; b=sQ+htDNjlyPaHjeegPfVRssygELRlWnmhcP+WvwYSr3xPWykCsSkGMaO/4ulI6nzBxytG810PZt4XaW87cPzVnVafH8Le+eGjpiVW9ARDfd87tsF+tGANTFvB3QKL1v+M/5WqCXbJxAlF6zmOM4t2f617584Y4JE7FD/fHRHsjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7DHIN6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7DHIN6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0121C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771367093;
	bh=+zNYTrvm7wIxZA0DMCfgjgdGmnSXgkL1uYU0+pohi8o=;
	h=To:Subject:From:Date:From;
	b=S7DHIN6xvL28zE6Awi4aTPC/IAzqUOYfocERsVNWLLZ86nnD4u1yY0L03WpbNVV7h
	 mgvursPmZBYeX0ZZR5t4jSOukGU/7yJuc3T1IPI7xtrBqxLCJDKJjk8dY5cpOYcmFv
	 xB+JwCMIPvNssuuQDVlZb9GTZDkEG7d/q2BPcbC9FeuaLLrNaKaAu//0RT+tDcFimw
	 zYbkw/fdFh4AJkbRWv3y/ney1zBLecQYUTNFJlaRNW6OSVkI5Ao37WkvA4wvzSYiWn
	 KSJWVlUeOI/Aga4ducK9DvJXGu2oveJilGwoUh3M6vIGOtbd+Jk8Cm1u8q3jqOzUhL
	 L1r8mKzt1mSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C49FE9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136709361.15819.4340613477236463472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e206cb54cbdf08e34b4188a58763f0628613fda946fee329e4bd3e179ec4ff48
Date: Tue, 17 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771367093
