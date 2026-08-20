Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E6B2DE6F8
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787207434; cv=none; b=Rqi5pPuCvc22yVRyWWPwhgAcBW6cpPs0/HHSDaxGxUfKl+8jQ/Ter2pyi1BcrjnBK4lWxuJMbZRfgozYSb7WriNhDo9z3bIRj5rsOwhyytOWvS/FxdzYO7KpSrRhsqTzKw3F7zIqmzYXVX+ErOBQE3dbCDKE0Ahq6lLm8cimI2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787207434; c=relaxed/simple;
	bh=ikmjZ2L8T/PMOrYgHzvddAAgmJcUI/X4P/6gFoclbtA=;
	h=To:Subject:From:Message-Id:Date; b=OByEs1QmBW5kFQ8vtjG+A3h7dGe+kqr0Ecmm0rVqTIEczKiZ8O6PyeUfMtvd8Y1zvP5wBxTbAoSlUnt+nZwUx/I37Lemc+srRrznoM2k+hWXJS5P9Qk/jRLaKfS0wa9YUDLwMi1Wt+zWq7o8hPb2sK3IMRWHC/z+yVfZmfO4iOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osmAdfIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osmAdfIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E97C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787207433;
	bh=ikmjZ2L8T/PMOrYgHzvddAAgmJcUI/X4P/6gFoclbtA=;
	h=To:Subject:From:Date:From;
	b=osmAdfIUNvsv1lHH1AQpAMzQsEzFEuRCpZDRW7e00M5e/pay/+H1tXHW/4xPbMN9r
	 cHCq+SCf/6tATuUpZEob3qgTuCxcs0p2GoV9jxY9awcc1dNTISBypGxKv6JV0qAQNN
	 PiZDISuOTzkklJEPDRh3E0lvtS1ciL9CGXYXv9YzK/1Zn+B5tzA+Ew3tUugNC7F83u
	 xV1CjXwvv5h4XDupiY4eGx+dLQiq/PjfcR9Gb/CZofDo3Vj8yx1TXvwEYvUtGD+b9U
	 KJAJ4DGvPLDsxD1P6zbwHjn1okIxcyMZ7yDEYE0qOoIpYT6MoWkBwcDpJ2D5W64lKm
	 pTEl55/3VDQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B856AC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720743374.29726.6849508028812134315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54aea138d597922007aeb87470969935a9214415c02ed9a0b45b921b15bcd085
Date: Thu, 20 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787207433
