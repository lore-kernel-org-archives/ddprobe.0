Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C43171D2
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747769396; cv=none; b=RayJn/pk+2LmtNPwtMotfCb2vkjfv/dsfmK/zPTiba9fXV/m4qZrCm7J2JArFmX85d6Qe9GCCO9eB5ZinmCOwo6hSXzskKBKglFLiQKr806IaMvBeclIR1e5JmqjUar3izwjmFYjbCfDFk1O72hSwZUXQ44HzqRMT8Zw1VSGIw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747769396; c=relaxed/simple;
	bh=jL5Sq7aEXKFBRfbVIm9rz+LmxQioIU2furX2xt9pdJY=;
	h=To:Subject:From:Message-Id:Date; b=UdtT8w+mXMls1Wl5KdX6zxbcXvTSbcl7Iqon3MsR0z+luhV8Wkbc3UCK1opiqCi2JHUeGn7gbvgyV8Lb/gwnNE1+cJ+lnDlPuqvE2Coyp/JxvP0x02xTy6afdku/ba7RznBYvdfQyh7xcCoks5Z58k/z9S9givxLVe7RToFdbkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZXlvHfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZXlvHfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A3EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747769393;
	bh=jL5Sq7aEXKFBRfbVIm9rz+LmxQioIU2furX2xt9pdJY=;
	h=To:Subject:From:Date:From;
	b=RZXlvHfAu7oZrq0mIaaGln6V6jP9PjuZuJbuQ4XvFoP3eeqtU/HEE2ng9nbbnQI/9
	 Ne4ykblI8yJKO+LRYIcsITUMaQ32BU/ej7gdk2L0c9z9cg54YYoEGHpm97+6ZW+2Fe
	 0ffA9xZz1G59R4r8gddveX2rraWush75wDTge4XZIhTQ9oyp3gizMpeFolQymNRuDm
	 7wX4VyS/+o1Rg97n9wm72P4jrNyI0Gp3pnadAUrVh07cx4B0qdXRIT35xoCyg/RHYW
	 Qo3sOnNqS7Qmyi4i1MbAuWWyMCjnQ+iuvjkXlXAcUHNOU1P+itiETPFIDP2nAvN3sU
	 skpcVeVGZLAhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4DBC54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776939357.6328.5634359709186500293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7b53b871c7f2397eef617ccdb8688b35818f2c8f8a5735c81542dc51bb774a
Date: Tue, 20 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747769393
