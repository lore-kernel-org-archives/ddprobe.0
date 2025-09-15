Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A485221FB2
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757951394; cv=none; b=mPe+Zo7r88AO8YXgpof5G9ow1wc+twk9Iu4/+2chyZEWZDqs6fTZK7d22D9WEaR9A/2rM/Usqr5bEUXMNz9psrBHCV5nG8RXI1VorvVWXG+O0vMG9/jdDAHfYbtWYPIa/Dws9UDtrDd7dPGT+KrgEO1ZEFVl2lDgyC39khYbCug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757951394; c=relaxed/simple;
	bh=XX+8k6VqfR+kqAoigC2eXGMfK27Ln25D2KzB83g28gU=;
	h=To:Subject:From:Message-Id:Date; b=YPwzqxBqgmjzB5reAIrcjYr+l82bKLIobE8B46zm0R1Wyk0huB0zZIj5T917ZG9nuepzH1gBjVjDxmkuDsbm1upqbT1D2q1WO7zl9I4AjKmI9KdH2xcahMnbJaOMi4evrXlZXQHSPJaRKNKO4DVB2s8Igb4gZHr8kVkBkCB1veo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwesmEAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwesmEAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA19C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757951393;
	bh=XX+8k6VqfR+kqAoigC2eXGMfK27Ln25D2KzB83g28gU=;
	h=To:Subject:From:Date:From;
	b=EwesmEAUgn9gNCl3gtE4L0DKrx0cvDiSOGjNlzlDBZwPNU2H+xgXC1jCbxX94YZZe
	 VA92Dn5r9DARf8jHNRt1aNNk9Ekh3WQtfpE0sTrXCIbWDjV8qudJ7u3uM3TuKAgdb4
	 50fahtCaefeVMUCUg/LefhwKfh4eDI8BNwpd4zT8wbZ+9qg2w/pzwnrvoDixxGD6yB
	 VNOzk1O+F3BJfb0v2gqWhdqCavOMjXcnl9BMhwHaaUIvZ9rTdoz7jPMWF6zdVtvPQz
	 gWpqtRtKKKrrYgoF2/qnys5zKB/No27vNkSPa5QYkrjCH085SBinj/AJGGykWkdHL0
	 dSDPm+ecZu23g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D8CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795139358.25462.11969791212429085630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef07c5571b2b782f320d0d074dc28dfc202a27d3ee8caee5b57e15d1a3a66025
Date: Mon, 15 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757951393
