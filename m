Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FC034F479
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772838894; cv=none; b=GRlkfA4t/Zd7jRtcFcifhl3mK4SYLHuldK+DYUNyFrWz03yce9M2mA7GNoUvqI/31xog41JkspR1hkQV3Gk33pKDexAr3LVqVv0hvqZ08Fhf7/V/eWuv9QrYqfc1wi4GWs0U4TiEPj6WcsXljsi3q5GrWFrW8a/x0d94G0kjCtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772838894; c=relaxed/simple;
	bh=foa3s1lwFP5wwnDSfetDbxeXZfkA1tzBZBo6cDZ4BzQ=;
	h=To:Subject:From:Message-Id:Date; b=Gt9DsdcxqiCWrzgDJcGyN1ptjM4PDqxAwqx8KgD23c9PqMmXxYfjLdM8vvIx2dphhY8eNwjZXcYh5nPpo3yxRBX186XS0VSp3iXDsaHVwhcL7DUMKNhRktlwa26M2dvvjyai3mgRr1f9QcHmaNd9n+uqPEjLuuMfockCcuMPJYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPPNn5Kr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPPNn5Kr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B893EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772838893;
	bh=foa3s1lwFP5wwnDSfetDbxeXZfkA1tzBZBo6cDZ4BzQ=;
	h=To:Subject:From:Date:From;
	b=PPPNn5KrKYPy879Nyk1sRY1cHEJEejkf3Rf+3dhsBDfTpD/KqmPfXLO3+6dg9kvhz
	 RHWqS1CE3Quj34QlVV1CIZkEJ+cYTv9oEL7c6XRGCf8/Qwp4MCX2erCzaiLrxnsFdl
	 336uh0RYa22vrER4dZ6vVRa1mP575mjqhh4USBMz8hSxWjY0/vemYsp57zv7yA0CIH
	 7UWdMCgZNTYVxkOLHX9gk65BvQGi1MXueB82IWR+1PKtgC4TpW7ki/pH5Vn/+BAQh1
	 Qt0/TKvMVr0uwYJtcSZ4hJ6PJDRuqD+w+7GDi4nlO/JkuDOcNo8kNM+CeKsgpL9Qfc
	 ByPUZpV+TA4ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3C5F5141C
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283889362.21916.7796455983359314774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717a8ce86d4a42e48ac66618db276d5857374bc5d294f30f6a0d66687f6fe178
Date: Fri, 06 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772838893
