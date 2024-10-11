Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADB9E56C
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728613554; cv=none; b=QJ7S0x9mcDdUcnPqK4pjs0uuKXkjD8h9QnXdRf3MZq1BxHj6hG4btrVkGTqE2e5c0mAUj20LFzQoMdqUds4rkinF7kAQUjcT5VJkFfyi1UrPIL0z51pSkF8ybo+2hNFmMP+Oa0GanTEOw/Zrr6FQAlEo8wScviAUIK0PHFa3UxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728613554; c=relaxed/simple;
	bh=OcPVdEO+u3P9n0sJA5wAm77vRVgOsH7yyVMTcNkV4vk=;
	h=To:Subject:From:Message-Id:Date; b=VkxShWeDEzh+fEeW/l4sfc5RP6x1dKJEa2hWv2xDcvadkmzCq1FljHtlJF9qF+jtc8kR8jGT5UJsOjJYFoSlus+6q5GThhw9PiNRAe1lkg2SsAfcTgNeaKzl9LZ3n1DEeNiX3VSlXyNve7Qp4MdMjz5yUX+JAG1SoHD/4y0QjQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geS7BMH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geS7BMH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA797C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728613553;
	bh=OcPVdEO+u3P9n0sJA5wAm77vRVgOsH7yyVMTcNkV4vk=;
	h=To:Subject:From:Date:From;
	b=geS7BMH1MekOcQDHtrhMmL3qR6E/WEADAfPEcvi48GyiQxRkxnPGajhN4K26awjYm
	 b/B7h8uvbsvXo4DgHaffI12robmP3AUkabBaoZZKjqY86srgnpLzmmoKm9j5puB7SG
	 dXxtMD8/Z/s5cgGaOY7Vh0TOGI39Tek0qUcs5Rn2pPBtISsb3nwSDnB+iVdAMQhUgX
	 THvEufrPeISB2/jZfwQvQ+r62ltM0BENiwHouUXO1/sVeRppDPR91C7wolZKNdBwea
	 p5OnBQ7XVjmH4/VgBYiq634rLD/titHjnFYGopuBGXS5ZQ2TpP/Xyg/5mYPhueRO+5
	 G3i4ShH/VCGMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CABD24467
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861355358.1442.14327186327222600568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0817962b622dfccafb3ed6a9ef47142b2307041551668f53cb2375051d1b0ab
Date: Fri, 11 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728613553
