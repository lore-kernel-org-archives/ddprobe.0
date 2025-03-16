Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D4DD26D
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742093994; cv=none; b=rBtC41tApUmQtJolCQGG8LLgFRptaXqRq8J0acC9o6SOyF483sxo7ac+4HjUsozYGPRTZJCdEOyYXo9Dvai5UUx2s7soW6ybLfNUMC92oOcf3BZX5oxzwo/oP0cqYqa+Fka+dsBk0YlmpI8Hbbns+WypMYS1xiaOhW9Qi3+7kDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742093994; c=relaxed/simple;
	bh=+3KbCyLh1rIhHnJYPLR5/fPSqvVcLdzCvyHsq8BuCIw=;
	h=To:Subject:From:Message-Id:Date; b=Kd6+KHyifaq43rTWyBiDOH0TN41qkxwI5UtHLq/V3Lh+C4MEHjrb/mCyimkV6DXD46AGi1P9xuta4JHfhx0L7Hq/E6js85FuQGM2mOmEJ8Nsyv3N5fVH+d8uCJKgx/V7aUXwEDPvBIPWAkZ5cpKKSLE8ytBCmrMVNNrJE8MkmMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afdITZLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afdITZLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB204C4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742093993;
	bh=+3KbCyLh1rIhHnJYPLR5/fPSqvVcLdzCvyHsq8BuCIw=;
	h=To:Subject:From:Date:From;
	b=afdITZLHFqEuPW4PzGvGU2v9iu/QZorkOrBLFFwXppJf16y3v/nEjc94b45rPo8tl
	 rSzD2uH50IbSUPiRHMvQP+Khneg3tNVPfEGks9aG5Ppcs9aJ/WL8LXzdWnifLj+P1s
	 D6qAPXV83Qrp7mGW6b3C1epyR4hXOMwjX6JyrhHtOfmFOf9XD1/NyKD1QOyEr0Iep0
	 Cs6hCLN5KgbpHkmALo2sCp+A67mUfP+cLhFmathXwhIimCVTXPwAUlu+koOgdXjR7A
	 3MuyHbaexQ2xPNOWt6DjeuojstrfeRUOkNCGG3YMQFN8+Sw6/JqROLj9D2CU9Yf475
	 NBMa5LHg+PWEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CD4C28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174209399369.29160.15742355257234261276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b195ab12368df320d7a910b27c78958912ce715e703704145f4c1fe093c70a4b
Date: Sun, 16 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742093993
