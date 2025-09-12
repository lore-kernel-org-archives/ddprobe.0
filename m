Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEADD24BCF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757699993; cv=none; b=APPrZk8kXY3s79PLrU7CBUtpym+YGc20RZxNQwtG3cEqTMI0qe4Cjo7SElJUQ3GPSQ/3P1efmXjG3ufJe6SXGBEUSpLv/x5Pa5+dNzxMqVsKeFr3KPaJt0YBl6JRdjLTercrEXI8owyksO3QB/K4SPGgaytBXbuLI540qL9ycfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757699993; c=relaxed/simple;
	bh=zFR3jxLea0jcuBtcWiicPbh6JTvGeuuqasWooYo7PgE=;
	h=To:Subject:From:Message-Id:Date; b=YYd+Mj0ctnhp5MY0EkUkzIrxOl4Hx+0wMKjrihbghayikuTWivDzvw58qIcCWmr1eHRot/o6Ow23NZPaZV4RXZ1ZXaFxe8T8jT9OGCMLQmaKvnfGitjteWvSaR6arHzV2YkhKkY2Rz0bgvo2Ib69sKLU9XLTk9V7OJj8yMe7+SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1WiGX86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1WiGX86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA91C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757699993;
	bh=zFR3jxLea0jcuBtcWiicPbh6JTvGeuuqasWooYo7PgE=;
	h=To:Subject:From:Date:From;
	b=O1WiGX86VitMXRJ1HxW3pFqd47QsFbFwAqnJs6xG/7Klydik7FuaXk+B64goCtJum
	 rkEGfUm1pwTtSeL6nqM6yLRrmCViu8hgVIgZHrClMivIu9NGjhlJIbbFVw8rgZwdwH
	 oeSnwgm+cBs1eJWGyBoUnaHmKZMkGQJNxhFLFBSiO2/NTBLzqxT+l0kmhVaH7Ysnah
	 3W6cLrwbnbUqZssB7/5BeUgxGMMuYencwOWHsEccCO5AA3DY2otWyJKWYxwaz+VOEi
	 f4KZYxT3VEQT0iedtPNWOwXZZFbMvsO7Amu+tlwu1u8TQBFfdtR7LH5bVEjUBnc2MG
	 q3H5xSuKgzgXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021CCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769999358.16014.6894241190636288274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8771c88082fe05f8a5e64103bb8a6d2f7e86e77cfdfc7b31dc807a4343293f69
Date: Fri, 12 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757699993
