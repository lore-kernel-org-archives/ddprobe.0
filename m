Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC46FBF0
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766292834; cv=none; b=YbZimybaMGxG0Lw5umxdgpSiYT8UnW3lAp9smPW616smEtpBIayBXGzvjbixgmjY0C1P1HX4ReF3d3P3lNNkI9BwNiZnvGFwM7YgZ/6/F7zzHewuYVGeEMpELPzHn3DxGi4Ab7ysLXcGr+aTyN4B0Cdkos762W1EDMX0Lf/5F+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766292834; c=relaxed/simple;
	bh=G/dDP7a9fQueSOtsWANZBHD7rQQ45NAfTTvqMFR4zT4=;
	h=To:Subject:From:Message-Id:Date; b=UrdlfTd42yqz5V6H+G/I1Bj1krd7Ko+xQjV3B+eAQkQk1BN35aC+aV54r+fABoX4jLfckZcl6OLHBisATAR3RHTHeZrtSRX1W91/QIFzmr97cqLo4AKN8cfbdJmjYKCwiEj5LAE6R+qT2z9L5QZXPBh8tl73K71pcEzEQDklYfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK7jjL+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK7jjL+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1319C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766292833;
	bh=G/dDP7a9fQueSOtsWANZBHD7rQQ45NAfTTvqMFR4zT4=;
	h=To:Subject:From:Date:From;
	b=eK7jjL+tf7wRaC/gCXVfSKfgtyq7DpUi9nr2k/zBCjQKb3C7uoYusqMXjX+v9fqqD
	 ft15MPT2Tbm0s9zpZZkAwHh9kItamXfWD7ZF2IvRSkZ9w+2svbsAf+oMpUx4DQ4VMz
	 d1Sa9jEJwRy6EUb1vMTqv4WLxLcgEI05z7XBHnLzCG62wmdChAlxEe8AIuVH/yP/mn
	 hYhFyJ39opUJD6Shlo/vLWXY5aQJNxeEgOLIOwmii8VS5FheQvdv6DbtH6w6c/6Vrv
	 wWUNcfow4WgCs7BJwyUk0f3BFwmgT4sdm5kOrTTd355z0y0sF7Q9qJMuI4QmzzbWAU
	 fqGr068a0Qpog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC87E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629283358.11018.7050853071400910973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7437e741ad168edbb2eb88cd1f733f4cf4d5cb2379436be8857bd8db2f892b01
Date: Sun, 21 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766292833
