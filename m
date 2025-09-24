Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2275215855E
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758731994; cv=none; b=FpHIFj1Hc4Fi5CRQAGphfXuQD8XsANKZ3hrJkH5MHmPK5zR6VZ0l2dTEdRXgvjOlp0V4W07ptmzWcFtFNzXQAz9Q5F4V07Z5pt4Jcq0pquLLzq5c5ZoF9h5H3cwOR9+KbFeEGf1UWvWNMHVB2MEo9D7I3rsDWNyXw3uuFYPgFs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758731994; c=relaxed/simple;
	bh=9yGRQO1JfcdV4Vw44RMimkbony+iJ6Mk25tAfa/Heyc=;
	h=To:Subject:From:Message-Id:Date; b=dSQgBiTNWQHuvmit3Rd6u+U9KuL0KWu1VupcYvNMCuOGZTVECQwgaimedvTnSVA1vjnIhVzJstL6kUjn8IZ6A8YflEF9AbsOom5o3UDzczl0zPkc8KKBYrz1COdASswrcM1XmVq48iDwTcAUsz6mLeVZ2NGCM9J9IQ7GeICDxIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8t+7JAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8t+7JAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9F7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758731993;
	bh=9yGRQO1JfcdV4Vw44RMimkbony+iJ6Mk25tAfa/Heyc=;
	h=To:Subject:From:Date:From;
	b=e8t+7JAiegwBh8IXEi4HUV0B3a7H91R9xMoSJNpdThdm0jj52xvOQIp5qR/xXLP/H
	 xtoA+0flCYCDcyCytqKQVf8ps+NJSK60vVvMa8pmT0lPyTL6/HFgDVO+kDI7J++tay
	 G3Q5FZLls8yARn97edeXsJ3CcmF4KtssxeCzbd1TM+URiRPFCLTGgXDyVF+/9UYYR/
	 2BUQVgax/95F8gPyUXls+iYYe6Y/D3oUZY0jSOWrw25l+QDCZCVa9Q9MKNd/5Cb8nI
	 Lrh9tVZdgMleVQYGxSQxFPon86gvNGlppBe7AnpiyqqIMbuFOCBJ3F+j0TwtrGk7D/
	 asvSKEeIDnM9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98471CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873199359.14204.3054514706068820710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed2ccedca7497cbd53e2e19e128499876638560ab772b54306021c457e5f07f
Date: Wed, 24 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758731993
