Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264F8175A70
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773554694; cv=none; b=jYCSdNhgEp0ahZAzKx2GusuAjD+VsQP+vMdziTX+uzVe478oGvXOA4LmZy2EEii59KbiPm/Ng7z8FKMb6RusjtCdzHBTy5SpB3pjJhGpbUh6gNn8Q1pB+pz7hIIcbCy/tJyRDK4Ng0kuj2Q2KTbveq7eyVEJiwkyjgtxQBT95B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773554694; c=relaxed/simple;
	bh=wOFFSEF+38DX1I1c7vceDZjHRNyJzsMxUWb8vNiBEjM=;
	h=To:Subject:From:Message-Id:Date; b=OhBdMZuzVTEZzircT06U6fmocHIoZpbQ2BKmB0wy+vgvuTSXyQ6IXXGMwODdJvTAGIgv7Pz8QyqI76Z78oaEg+gDBtYkMV0yxL3Vtfnt9MyWmJphhdhPsuSBQjSxNjpSdtpt69tHgGFE/EVh19vSv1tybBpBw2M39eZf3sxhtkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fO36nnbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fO36nnbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A805BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773554693;
	bh=wOFFSEF+38DX1I1c7vceDZjHRNyJzsMxUWb8vNiBEjM=;
	h=To:Subject:From:Date:From;
	b=fO36nnbW8TO15FW3bbyGsW9XP+WRmNh/OFIPK7MgRxkQRtxdCUELI/ZT75uMcVJj1
	 6s3iELr4Bqwreu98BBhiRBKs+yNbr4yc/vQEYZ0C0GBKCwFQYzPJp8jy7MpVVTdDwk
	 xS++hcp0OW2VZznlaPrh+v1iNwm5Fpg+IV94U8vWXFJlVmSNE7F9az/u5CEJrqCtV7
	 o+LtK33DQrK3/n2ytjUkWumD4BTSSrHhzLlZfPn/1w8PrpUZYYoxlW/c2XsY61b5eG
	 4e4e9BT2GxLREm0CBpBSwL0lyhXQk+AP0+78b7LHhGQSlDpeiG2egwzXFUAX7U3xRV
	 Jhb8kLjmZayYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB1D58B0F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355469357.713.12783929095704203371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546a20c64e7b61b6023a7e51e338304b8fcd513dc3b2a809ada400086cb730d3
Date: Sun, 15 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773554693
