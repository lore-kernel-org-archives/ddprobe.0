Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124C12147E6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764010974; cv=none; b=eQ3wU8xThhXd4NCzBYocSUbl7BuTXna/0dvCx7pjOSqg2XgydLyMXBwrl5ywzfojR79TfK/9ms1RlMx6Vac6ihULJOaeXqE2XTCZHn2WuRhKfQ25G9mfNLPHUsFgSM2jmQuZKEZjda+n9hfR+W6UL7k7Bhr5E0dWmUCtfBL1oDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764010974; c=relaxed/simple;
	bh=/eCGdvuY/369ToWPm+go9GtUQ/oGrw6Kyfet4sMETWA=;
	h=To:Subject:From:Message-Id:Date; b=eHDx6q1/semEu1fNuBdu4Fm6bT8G0jep8w9Baxs6bH2/TQtDoSMfC2rVzqavJiIUE1aBTdOG1ENYQj0Pu8cDUwxiX0yEBILUD3FUziLBd4yCjBz5ptN8LuBvxS1dwe+T+GMkUOHJUeTu/mTlr8nBmasZehgAl+6wyZdusYbpahs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKSFqoMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKSFqoMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72BDC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764010973;
	bh=/eCGdvuY/369ToWPm+go9GtUQ/oGrw6Kyfet4sMETWA=;
	h=To:Subject:From:Date:From;
	b=cKSFqoMk/sBmeeZayTGQAACnOHK6JYk/7ZziJI8el4QezfRHCEJJaJh+LEGdXbZql
	 1qqeV+JUn5vK9N0pO4aTsKvm1WXFsJH+emmq/KOKNhwxfqnT1D5Jw4G/sKBg3hPfqA
	 RBy4y4JYks/uRjhCJB/obbHOOMbW+MnpPTVI/Ym6MDREx948BR8WRXPEWU2pHMKAsN
	 JqVxXpA3f6uWGCgc9gertV3lY7v6t4z+933Q+6xiF4nqZYhnkUHlVFPJ5AL0jUj8wd
	 lOECPwt3zs2XziyYFKoJHppsfPUJXF/ucArKPrfWpUIlY0A7GTjBfG40OdaotLC73K
	 NEXzS6px9OiYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AF4CFD348
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401097359.28168.2451743613543221831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c0a9aef8bf82fb43a3615329753465ba7fba080e761d684006f459e16efc2a
Date: Mon, 24 Nov 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764010973
