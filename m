Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AE52B9A4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744639196; cv=none; b=g3XUHkWzLODDsJw7fpzQbu8kK9lqwbjpYSorqNgcz1O+ilhqvTaYlgXabV4kMNL/mA+fEuCTprDXzNcJ4S7wXFX0YQtoVLWuWocH01N2V3uE7n1q00zxn8gISwWJacw0Kf0VFKJ8Gtl2ICmsZbN14r3uNNZWs8EvTMWgQ6FsjNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744639196; c=relaxed/simple;
	bh=/r5Z6kHDUgMIjocl0qqyXEqwM27vspyQgJb9Fskm1QA=;
	h=To:Subject:From:Message-Id:Date; b=Wt7ya6PRHDjB6yODOTYckFMZalcnVQUV5rZsb7hDHW6KelvuunBOeC1nxd9C1irTHj0dcpE08kWgo9+B2ri91/oO8akTxcGJ1wYBvLuaWow8ruWZakeMVo8FxVqB6og06pw0hy21gNo1JDygpLF2yLYseyFLf3Zo5aHKaAS0NR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3d4Qdr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3d4Qdr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D40C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744639193;
	bh=/r5Z6kHDUgMIjocl0qqyXEqwM27vspyQgJb9Fskm1QA=;
	h=To:Subject:From:Date:From;
	b=Y3d4Qdr/DTi1upTIYFBuC8BtupXeqj0tqs7zfN626rIjA3oD00Rhy/lIu0P8WTaXh
	 eAOzEOOHAUWf+5Dnv5ChRyDgNUIlnrACIMsaYODX4RMbMrnFmmh2i7UrC1pqIFX2hJ
	 LwabJitzdj1U07Vuz0R43GVDxVa87JLHzOpjyX9xwTewwIAA97uCVjTDAYA6MHSab2
	 dx3f1Suq0j3yGKsQy9EQvgJrku8APxmrqw7MLS5WyLpfgVyFEDpAkYCrofFs730cE4
	 eInxfnA22PNKOqsL1cGDkOD7UEQkKd+Xp2l0m4SDaWLfOOQDm6tc5d+R1fEUw5lpm2
	 DMOuwVykTtejQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95266C369B4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463919360.23427.2727838581334218741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c97bb0a1d7618826a187e06d672b9109164e918fdaa263a65920c66e6cdb0ce
Date: Mon, 14 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744639193
