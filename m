Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F12E1C6B6
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712907563; cv=none; b=dDOrwPcKL7qWrXPjHyWTdyYA4jwEPEVrHrOTJzNq5oNsBXV24X3oZihwZqbdVqkQru0A/NFn0VVpEQRFR4ec6HW1a33qTowxYz/iXZGKVoX/D+Qyqajx4cdIr2EslV9CMV+8kgagnN8LcpefRHtGoymqHiMwlbQizFxVlHP7r9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712907563; c=relaxed/simple;
	bh=XC+Cr/zpYwkejJztY1GbPhs6k70fXU6ly8bEqwHTYxY=;
	h=To:Subject:From:Message-Id:Date; b=k+jayM0pSZ8x3n9TtopNnT+kXCEZ9mTTJ86qhgvRj9eBnLTpGPjut3osfj5zlEIgob8CfbCxl7JYuwRC1n4AzeTGvJPD7xp3iBuYuaNTZsngSO+XesOlaCjnQz/g0s7HCPQKHONwyi4rp9UFmUut48cahmb93LjjtmWC7Nh7U0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yqb2Hxca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yqb2Hxca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D113BC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712907562;
	bh=XC+Cr/zpYwkejJztY1GbPhs6k70fXU6ly8bEqwHTYxY=;
	h=To:Subject:From:Date:From;
	b=Yqb2HxcaJIcv6KDaE0xYQ7kSfgZq+WnC9Mln5PBwc/sSRBcCHVjTxNu87theLcy8K
	 KHAEgZL6Z9aZPeAPfO7Us/8syq1ly2tJ9OwrenhJTKZweAjv1Mf+X6JMhm471cVvmC
	 qbDUuryeFvwk/q6YdQzcSV0I3rwYRFrSQpcWQl/rftYRGIxC3Awm2ELTmrgZQy0eWj
	 j6D5QHwNj+3JvJygfSDooFWpnCSt3HRki+K1wYHwjgZt1jIvLKgTcnTrFVXizaE7il
	 /vEL3wGlP51OobCQ1gURDooEnbn8J2J4CsTnqSDCzhjDWNiVnWuKNtuxC5Z0mfp9VX
	 JletJQbh9pz6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFA9C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171290756277.7701.5559338462431768363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8f0662b19978217f69731d2692200426e1049fb8744bb2d7229bbd14588a7a
Date: Fri, 12 Apr 2024 07:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712907562
