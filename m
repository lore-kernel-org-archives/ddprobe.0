Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1CE241CB7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763656913; cv=none; b=s4/pfB3YkNMbxtii+N+MZwfUzrt/xFm50tATXit2F9Au4alZwipjUi1hyI6joeKQvwDAoYeZMl1I5rGMO1zqN5dWF6z4JAf6yvjVqheGR/4P/lMeBBXwXn0+VT4QjKsFiVuVczgff9koWKQMt4ih6aOfHcPzzTk/w9K/oI7O2JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763656913; c=relaxed/simple;
	bh=FUlqL3tJcPzr+dqzRGpu/5K4YpT2mcSiTS2zWrJ8BOI=;
	h=To:Subject:From:Message-Id:Date; b=WJTkWsvE0ZvRLlemhePB4L3DonnRAvbE9wxsSCmwLZb9kla2Paonf3c41PsUtphesNmOaihfzEUVDXW8dQvXYgaVgRzYW3SrOdYzCIKJ2kXwva5WTVuol5LPfTZ+WDqDMM//lKqmsI8EfcOpy9j2Q7ERc2NWGCJ4sqvfq3q8luM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBN8+rDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBN8+rDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A66C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763656913;
	bh=FUlqL3tJcPzr+dqzRGpu/5K4YpT2mcSiTS2zWrJ8BOI=;
	h=To:Subject:From:Date:From;
	b=LBN8+rDqb3XjeRusae/L1yAgs+ymE3UxghPy8jbaNI+0FSP3ROEI1r6gfGFgTjiP7
	 8ieqEzw8xsymKMfxQbsIorSH+55vLrjzCH8+OBz+X6pb994AUzFbwt/QBi+BQDjcHC
	 1OM6H8cJncQRtJOo6AarrCx83gxyJHPVxKAHrLFR+wPEu0I87UCo3rVNXrLp5Kwz9l
	 d1IzlP40LX4MMajt1UIkBwdaJKC6Zi72ljZjRIu8W/y8SYoa8BIoWReMCw+knWIf1T
	 mHkb6fXSn2PNIHFbPvK81eulw3DO6eaRVDCptxhWQ6Hxcx7izvG2x2FnS0iUNhWBEt
	 6mithJ82afjmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B3FCF887B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365691360.31434.151830837855353138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e809646817c2813652f75aa07cd7e6bcbd594561a8b355e69405a29b60b58320
Date: Thu, 20 Nov 2025 16:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763656913
