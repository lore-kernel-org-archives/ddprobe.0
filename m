Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5321440DFC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774200894; cv=none; b=HTojV23CRdDeaiWmqdUAJi9sToClo4xtfKWhqllkF+S6EE2VAonPOuMXepD76EZt074bdaKXpjyPH4o2aowmOGsa+NAtJr55jTFi3MKETDn/hLWSroUML6t6u0YS63XG0uGn/XrcXOolOdMrP6NcK8m5H1TM/3kdBNILXu4hTMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774200894; c=relaxed/simple;
	bh=Ie2y5+p8fIgOrQrhr2kFHVJu+yi/vQx5BvYOU1NOE/U=;
	h=To:Subject:From:Message-Id:Date; b=sCm5gWeNDbCE0ffaRJjReEmVQwMEq4ti2b/N9noPmlnUq4Qbr05cWLD5hU+re2xAIlW0M46IcIt3V63/J8jL3y8d7RlPMOQUWqYlrDwyuFW9L74KCfCqORQw9ahFGFn8+qMsVHzYP4bjKgfQVqbtkhulJiZPmaw4P5y23T481xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cd/Zv1Wf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cd/Zv1Wf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A665CC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774200893;
	bh=Ie2y5+p8fIgOrQrhr2kFHVJu+yi/vQx5BvYOU1NOE/U=;
	h=To:Subject:From:Date:From;
	b=Cd/Zv1Wf81FbrxpFX98LYClqvKD/eZs39n+5IRyY4T5QNhRuHEOSowqGNUOv9K/QJ
	 QCzIWe5MFYpbp0Sdnhn53bbftYK6hOQNcw3J9kSrhzUvzc3ii5iHpTiigDekV+Zh8B
	 P/sO0bxUAh3TxxGCxQ4PdrfatBUqUmHGr40p3zdueIpFuSWrwBfmsJid7xC0T3Gw1D
	 WzhFRnYEWZUvIubXdZR3ase1Hpnp5VskG9lXX1si7rqoQxxogNzwRZugXWmYhiimsW
	 hjkzZ1nzPX9AcKsqJoQ+2lUy/BQeL4cbXKj5RtJGANGku+0827lfVtzatRWhDVYZaa
	 5ZfPS9ZM2sdgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A4FC72CB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420089358.21438.5844004296297737383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb68f80c7e6420d391d2a8e555dd7ef9ec201f65bbfd4d49f6c17f8a01ea6676
Date: Sun, 22 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774200893
