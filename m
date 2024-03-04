Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9EC610A1F
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709587696; cv=none; b=lGo/tcCF1jj1QfBaqX1gMnwitIC6Uoaaq9U+nT6ij2tVq78M/G8Q5lIws6Dm8oQvZkqEOxKMbzRay9pb2yjQFtqyHPVdIuVl4WgD9ecdghZ+t/PDyNYWSMQrK8Gf08aYXTwWExZztn0EanLWUplFKRw2X6A3UHkxDsdPAL460jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709587696; c=relaxed/simple;
	bh=L8o5hjshdaqejtbPq+WUN+1x5CL4LGLdYEjtb8YXeyU=;
	h=To:Subject:From:Message-Id:Date; b=RUgRR6qnmHZhcoIZTE2bHKpxT92gd6Q+C6mTijFO98FEyzMzXx+EW+VK6CgDN/wh3GbEZnFh8+gPFRQOYKYti0vWDd6Dyh6AkCyuQxVxLoDHeMg1a5lex818EKx2HeCJeSAHAnvgL86nbNpPp4qyw362kLlBPAV8uUaZSXeP5Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+1pYQjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+1pYQjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7413AC43390
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709587696;
	bh=L8o5hjshdaqejtbPq+WUN+1x5CL4LGLdYEjtb8YXeyU=;
	h=To:Subject:From:Date:From;
	b=r+1pYQjYM/8YtXK/v/18HCVxP67CDVbBXHMFCTrwr4BnTFJQlQ/3G4TYSXnsZDSMt
	 GpIl3TkIRbe4bYW4lqfqGOjOJa0uLSPqfPnBtZUzbM6mmSI8gdRqO5qywk9T1SmTQ4
	 5skTebslavuZ29PCpTuwN48rcWX34Lv3wJBSE1SImhBWjHptJ8lUaeUbETKdpHo4hE
	 bE9+brl8mo5xyDY3/cebiWXDV/dWeeW/9VXTIQ8naCVqt15kQMMByxaF8KLPP5rQtW
	 kB0NeTfMA5Yr/oEEYN8RzwwKANM4Q20gEFWdeHyLSWFmPe3coVeZlXGPLT9RQfC9aT
	 JlIDXJx3QkOFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD7FC48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170958769637.18378.2156111660896688548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0338b44412a63e7c57c31335d04822423de00a1e92c21d110922dee0057051d1
Date: Mon, 04 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709587696
