Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339A01CAA86
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738431954; cv=none; b=EHuXG5q8KyjUmCOeCzvKgpK1FfhOki8cJ7E8ma/AqX6yYRjketY/MXyzhQh9kqe+6TLmAVxssp53cAfJrCvcOT00h3HzzkFvjl3mqhcPXNN7wQccspE8xfcbK90/X+/ppPmVrmslCyUQAuoKBoknOn90q1wHgZAEAsGFJxKCLXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738431954; c=relaxed/simple;
	bh=78JsdlAz11woobGckBn7JLSedGVNL4qDAFwwpzv4CcI=;
	h=To:Subject:From:Message-Id:Date; b=J7SFxkI9DJ98xprMiP4QIHGv3nPf4UjxbNsndvvOigoy5xH6COpmqFIkqVHbDaXJkVCYxr2ISdBImF/KHf1NYRP3e0LSX6YUdvDrcp38qCwdvxpdl9ETCsgJF+yZNQO0vUq7+ug5evOltCDJ69eTs7Dg07g70Fn/QR0i86UfC2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSdnwws2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSdnwws2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB49FC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738431953;
	bh=78JsdlAz11woobGckBn7JLSedGVNL4qDAFwwpzv4CcI=;
	h=To:Subject:From:Date:From;
	b=gSdnwws2v0sLgHdCs6vDE5Vk94zFoRyfV8MFfA+rD1uWSN4f6tLMcIaFvNi1AhjIA
	 pTxY88Ihkdnsomalr25bIUsI8mJpmeLd06kfbf8X4hUtGoidPkARxSUvh8u6xQ2/LB
	 8xZI3jK1DhJPtfoG3RjFlWHVw7p5k1AW/1shMpGpniEbVzY3tBqDXdz+CnKPlxTk9Y
	 O549qU8cDVR6/3ok4pf4cKc8/p8RI3oF9xKQh4EKHlcc5K0Qlx7GCJUBg1+CLd1Ohi
	 AZSv1C71n4+Osj3WaZYxQSBUr24jIjVOH8saRJuuh8H2CO+C4nLwLK91Q23X6D0MWe
	 bTstsNyKIWDLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9597AC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843195358.24628.8714982198935302408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1256c1d76e56c6da54b5db7020d31323181d9c091ae69d687432c24d2a10fee7
Date: Sat, 01 Feb 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738431953
