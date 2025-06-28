Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DB27DA66
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751146794; cv=none; b=BteiQIzBO6Fe4c/cWOv7X6YxQY8Upc6aD5n4YlmXUR1sGA5P/wUhpSnfYwVPH+D/0e9byziqwS+Ao+yrbaxoiPYBerEJ7Bi8F63CrvFK064mLMekuZEF1EkIKXLQpOLrR9qDyVG/9wZedgZJXDLnlEdm9bJHnTKOPJoXSRjPAyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751146794; c=relaxed/simple;
	bh=9X7Ire49sjprlqXZdJ/tz4ZOXfUCfCcXvW8NC1wf+dU=;
	h=To:Subject:From:Message-Id:Date; b=SdWOf8hhjnmgd8bnk4wu37fMm5M4YpoKxagfaIGnk4jQhFao9U94bJq8MBxg57M2LXbaFJijo1D04vFatQ6KbHVVfrmtMWre5xUs4xDDVcBZmDcNfIBcUUbkGGEckMmCfyqb4/ScdC928jONCC+KWvsDrRKrrn5jnkZ3Mc3xTjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQEqbb+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQEqbb+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C345C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751146793;
	bh=9X7Ire49sjprlqXZdJ/tz4ZOXfUCfCcXvW8NC1wf+dU=;
	h=To:Subject:From:Date:From;
	b=KQEqbb+ulBobayeChGkoIsqvsTY3U/3NpiVPAdo04Fz2McVc6dt0jY1GWDvBVRJRz
	 8ClA/roh3HLxTB20EPePrJT20TcVX6bK+7H2A4eZMc6P0mJtqAYOcH2gUVhaWpDBZ1
	 NHgHoZ5dkY+rGKtoNmfBmnGM4Ix0wZzuEKl8lFawSaa6q3RAFMXSBOodwwSux+HoPo
	 vhMjZOMKdJp35qTdgDyaQGKqIZ0HGTnLo5VMHwc/ODnXABhy3xhFco45CB6rd4GDDi
	 TdFtDERD7cCy/4VWH5fXDrjCd2aYcU35P+BJfSxT9bv3Q68Gxni44gvYn/AVDRdG1b
	 3XvWFkRovt6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7DC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114679357.31240.17021447874648177815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a61ae666e73f31ae0f1587c8dfdc18aa6a9e3112958cca0eec41bbe64a388d0
Date: Sat, 28 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751146793
