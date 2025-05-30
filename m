Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F12355E69
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748617194; cv=none; b=AiSo5+98sk5gEZANMUfhIcTcNfOqao4bOUi2Od7SDXP2bHDlUcKlf4JRUDMhxQvRGsD9r8DwMmDk88XxcJAiQY0w0DIHGED4t7VXgiFpmQYcov1WvrA5/ffYk69RQmxFUQfzMVM+dxdq36sJaScHdoaiHfwVyOY064Dk1gKuf1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748617194; c=relaxed/simple;
	bh=0i3C4dmMGXUuc/VH9OKtuxgc8YpH/HC8XpAUcVOkQCw=;
	h=To:Subject:From:Message-Id:Date; b=O3a50G5/LTD0pc6vxDoacCZCAyPTkNFVP2YmU/xj3nzczfpH85BJi9nrluFpo9jXosZ1ibv4EiZVY2//EwG9QRomgLDKjJONKh/wX/n776Q9x1d071uxUvoMXI0/JpBf6yMTaEzeGjb2mP5UwMM2KnEqLO8e9jlseibwj4qAciI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjVJ0uBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjVJ0uBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B0C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748617193;
	bh=0i3C4dmMGXUuc/VH9OKtuxgc8YpH/HC8XpAUcVOkQCw=;
	h=To:Subject:From:Date:From;
	b=pjVJ0uBXZg0x7ToRC3geo6Q6BpQyTHziD8GvvVgRzBMsYUHB3J6conVmTrAjRHBAb
	 hX1u+kTgAFT6JaDz0e3LQD/pUqMq3d/wJ4Ji5k164RbbscGsXoJ+O//gPpVzBsv61j
	 dfMPIiSrOlq9Gis5445ncW5ocNpShXLCz7Uck7Uwd9kmBZwtzLpLy+4fKpjQ9m6+0+
	 c1j7JUkxuRSBzQYeS9u3nb+H7HB5/TlsK2Pz171dbnhk3YwtKYrUsaUMKYu33hiw1I
	 0mJjTU9/UpJYRNiTMK0iPbDU8G2YZt4oFV0JBUkllqWXwOn30ku9QbiVUzWfzvKuzz
	 m8F8ooVyzInIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90917C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861719358.20577.12412773223230961555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a824ec4873197358454bafc016df66bc47c6e644116cb7931b1f5ae97317c6
Date: Fri, 30 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748617193
