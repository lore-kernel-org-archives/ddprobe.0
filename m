Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278D3281358
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758739794; cv=none; b=quklxxSLNLQKIBgW63X3fR/14HHA6lDlZw9YILgkH6+rW/jf2KsR7nGIPbKsJ4nNJcGiVLcsksp8H+zlsaSFZCwbsHA7ipAK4K3bYpkYiNER3YKh2ocriD6nN+3YlhZBHoLww1I3k1SkQ/j5MEL/mM9rcvtL3/OsyeRGzzsP7nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758739794; c=relaxed/simple;
	bh=fWQutu8adJ295z4vVt89YdLgbpPIr4qR8MTwQ4odU9A=;
	h=To:Subject:From:Message-Id:Date; b=qv7e2pPSQLwOhuk9ZGZphSX3i2NJhL440c/m/a/OyYhTXYXjOGxjdG1znkHSAj7+k33n/RBMjbx2mHQ7WX5P1k2YrW2A/qgsAPANqQW98l3WsGVkq7knUSsmgOXZKg3145ih/DDPDxPS3IQCHehFgCxbiDfBKa1Tc+rgFrCfDEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ploXyqMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ploXyqMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D46C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758739793;
	bh=fWQutu8adJ295z4vVt89YdLgbpPIr4qR8MTwQ4odU9A=;
	h=To:Subject:From:Date:From;
	b=ploXyqMej1rVbWYazLwUIUy5RkBf9kxr1RO/XybXOmNdddgoBbNoKGGhGHf5mb67l
	 xCdspIwP/GQACDX1t0Vg5x8HeymV/GHRKJf37WYHZjJMZaCcpPvRIDmJqr0Asq+qRD
	 mN/SEU5p3yCd0de0z09feYsObBhgSdGpwC+W13pAJlZmaQM7lTGTWZDlYtgjUHy/UT
	 1zMHGe4AkAkhPRWs9WgJsTrEMSCS4TGJeiMmF0+KXstiCyPLikRDpYs+dq5kkFAl3n
	 Qr39ev7oB8N873cxKIcR5nbCjGT6aeletwK5q8W6/c9Hf/x1zPixKM/qtUmWWh6cM1
	 VSpUqXSHLlK+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909DDCAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873979358.18656.14202532076383527666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f566589372322c6e4f3f1792fc214ab1e7bd54b20686b41330352409f6a986fe
Date: Wed, 24 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758739793
