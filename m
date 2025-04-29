Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BDA210F5D
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745930395; cv=none; b=sfUT3kESN+Fiv98ubZ6bUUAUuKwNwyfJKHjs+RjXrv+7FIFIrORuMJ8N0jlBuzUFDzE9WAczcK5KfZVDMDFniz1wdBBjI1v6V2ajXPJXbvQvtiSb0vqYFmgFLODTVh37AK2BvmMFKmi9XHjV0JxILR4tfu0I/cNz68VjjJtYc64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745930395; c=relaxed/simple;
	bh=J+swMMQFztPhgs+N7ao1tnhUD08Q4XAeE1m69QHtR3Y=;
	h=To:Subject:From:Message-Id:Date; b=mQrwoKOK/StpW3bRCx92L46kNUWzDiOQjRsRmcwJPvC37c6VVS8+NMdaXGJdkk8mmKagJh8rmjp9vgh+ZEU5j4hieYJQB4Sdf4xGZ3wTVpGIL8TiwmcJR5/DGz1HdD9Ows6XU7PVWmx14pQaAcHUATFZvDViJg5/Tmu+Oa1GUsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJkuYhy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJkuYhy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A041DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745930393;
	bh=J+swMMQFztPhgs+N7ao1tnhUD08Q4XAeE1m69QHtR3Y=;
	h=To:Subject:From:Date:From;
	b=SJkuYhy8P3UCdxUgDTtN3IKQrTdKRrIJhpOH0OcZ1CLWEYyHoaKrdbcnBZpJG1dzj
	 tswl3y7TLagZNnVX20Wchc0LJdq6rpYJcZJ8ondxQ/aIn8YzJANVs4jl2RImm20D6h
	 bs4pvwEwjd846AYEEdaidkaeLapLhItbvbbKg9BU1g5tcXvvl2qK8x78qxxI0LGXVh
	 GHohtnjKLKK97xB6H0uuvgl0bXZqu96WH+NudEmhTgj7v8bZdAZOWwwmAUF0OCnOrf
	 zoiQ/gzElnmRXhZIe6E6J3Qh9gT2kviDfOXUyYVXsqVolh5sa34b/qG18chT/nIZke
	 uSHuJ8JB+We+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F018C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593039357.8763.12847464062846850740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a289c86149b0ee5ce5cd3008bf2bf794482b0da220253df04518bf0993f6b74
Date: Tue, 29 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745930393
