Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551882D0610
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785718834; cv=none; b=bbnfmX+hOpCpbgKywiPGllvoWqnLyS1MaTWfFDn5mB11SAHfD8BEf+V37wixoK2vJxZVEE8quDgbD8o1bAhyVIfO1VTKc7VM7w0U6tRLx1UEXkG/YJxuuYnEYyp1Oalz2CSRLk30d2F4odKYiPKioy1YYcnBinX7KxDGZO6SYAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785718834; c=relaxed/simple;
	bh=nV3Acu33Bj1oGD/SCk7oB0SRZeS5SUSEYvjIlWhrKR0=;
	h=To:Subject:From:Message-Id:Date; b=YFVXb9oEqwh9cL8a8/QwmM7YGqdZRmnK3anQn94YN0000UZfI6J2Wk8fpFbB/yTK8qOBvw8KU70lWDXNVDwbFX7K++ikwtJ9S5UL6Yr+M4h5rxnjR/Sj8xZG60xV7tejShl2a3LSlE1wHr/nt5kdcVfTkah6/P02Ae5QvZI9Ezs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRtXGg6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRtXGg6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0919C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785718833;
	bh=nV3Acu33Bj1oGD/SCk7oB0SRZeS5SUSEYvjIlWhrKR0=;
	h=To:Subject:From:Date:From;
	b=HRtXGg6Exi+OdV4lNOOpusL+r1StjznbUQtpQ0q+qjGpjKxNOEEsDsweLW3CG70CI
	 W80NzBFd9yU7Y5fv+Hs3SkDHg0WHoXkKLfVDgPg5sZgPp+GbzrjoYH8viQ0aBJll77
	 UtAJdsn/MOORffCu81GCxxs5LmdfpXLX6mhPBsp1OVVUt5tc/EH+GtGuzHOQClABWY
	 +EeCb92bDpQU7WNNKylpKamxWv4CDtiiOWhOUUHwOhcQWQ0jnpe09GJlDHjKm+gpk+
	 7QvETWqJPl+td/vlUS+WH1Uz54nngmMKA0esKAQEH0J+TERwAlDVy5DiWwjDAJO4TB
	 wFL1lRmfjWB4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE6AC55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571883368.11094.3296356532673137727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d4d5628cc50873a9ee26c07aaeaefe58e46fd62043f8deaeeb0e90410104ec
Date: Mon, 03 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785718833
