Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF4D136672
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751902795; cv=none; b=T6d7DrHKVT2/hLmZbtw25P60RZCnXCwt/vDt+C5DKGOuSGavBl6ckPNaM5AW8jTzNOjRxDUnrNOokwa7GJFVouFI7gN16O/jDrPzlFpau/kh9kg61filZ/7/2EKLttmvJNLgHQdwMVoJFR0oVLOJQHLSZd5TXjHfs1Gh8uhcgYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751902795; c=relaxed/simple;
	bh=nVvkdN/IeMnkGKxZJ6kHMxn/hZhSTl8WNWkWWF7ZZU8=;
	h=To:Subject:From:Message-Id:Date; b=Fvp2phSnxM2cMLu/kOg83jLWeKzFjMgdknoCJQ/VYSLTiC8Q2roRJZSwMrUV0rv/v5Lc8jLsSNlH4su96YL0jj3nLz7Y+2gqL3us8Tbt9mbNtyqwLwWsJIaRq3qOFAecvui4O0MgsOng0N7WSVjL+6URhVVyEJGgKwKsa+Gel6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ac7BRI2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ac7BRI2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA34C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751902793;
	bh=nVvkdN/IeMnkGKxZJ6kHMxn/hZhSTl8WNWkWWF7ZZU8=;
	h=To:Subject:From:Date:From;
	b=ac7BRI2pqmxrXKLOch5prHVsK+mGW1Qd735/7pAUB6PtYvGM52EaP7rlnn2n30QDk
	 6w9Pb1wGYzR7gPIxWpCgwroyHWPY06QtVYuPwopCCZqFYiPiTWGsZjpDLywAr8eZG7
	 cYnn6A8vue5meVRdajp6twfWZX72+H/yIpeXagb0RcW0NgZGMIVtozMNNiNfddxzVN
	 MvtRzJM/JcXUwEFmx4/PbyyVoxjR+/iEx59/vzkVzYZU+chCfmLWoqRuDh9HMacDX5
	 oUs4x9i56ZKeSQeoQvuR/K4dUbsAfGhVxiQoVPjOr7TMuhCjcJFhZygk+65YOp3Rip
	 TfUQOB4aLnWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4FC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190279357.2814.16587252600826994176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d508d93a30f3009b35439172acae186481fbcbcda323eb6de526716e4195cc5
Date: Mon, 07 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751902793
