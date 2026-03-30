Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC8978F3E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774849494; cv=none; b=c8EjyN/k4jDvwsWF3OqltvVrJ2jpUdF88dKMHrkEswJ1u/8l+QJCcj13RVZR0/croJmJPGTzhUNiiC3hxL3x8augdNWL8oRQl/RJqc1C1KRutcwoIXTCCmFvm/2G2wKYBBySsRhlAU7GF7Z6mgiCAMkwpdvw0PdDCgvW4iPE/k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774849494; c=relaxed/simple;
	bh=5zyqAOzY/U4LzZ4uARJKWvYD0h7qU4COC0b+bR3Z4ic=;
	h=To:Subject:From:Message-Id:Date; b=bmzvoDUbwf6GIATg/07xYa0/61Ex2ob2Wc/tA/GRm5YJYupY1dgRh9MPTrwjUj6VmXYhYbKJd69FCVHDYbgfetWQYmj8yYXp1iwMCJaEiIY+iNNcB+FUQWo7bg4K+zlBkc0LUR/6hE8VEDl6LuLBrj6hVgVFvk75Cq+RXcBfCYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA4mKSUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA4mKSUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0F9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774849493;
	bh=5zyqAOzY/U4LzZ4uARJKWvYD0h7qU4COC0b+bR3Z4ic=;
	h=To:Subject:From:Date:From;
	b=CA4mKSUZFqE339ktrbbSbL9xtM3eRuXLyt/1B/bXAmWedFcL982CMuUjKenU9hIvz
	 nUlSOh5tDRjZigRY+AyjGYnorS3j40tKfNbxZnAwWh4GZVAZsIQHB1TEDFXz1Enc/H
	 DQBxfhpVRkylu4u5rMkvLLcKgIqMI4VOXQSfG3gDR1tFQhKECamwhrtm8m46mBc7KT
	 rSBIviEU+sbZeXbt3xsys5vIDwwJ2cx4BpLh0hHAU9TbyxujY2Bnnloa5kQJwiwYnX
	 C22IQuDIbI7/5LZWB4F2g/DnFxKtO85RWZEndCTnibIECF7iFNeixGUwd+4e3m5ENh
	 MQB+yGPhiPdaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA366FF4947
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484949366.10084.16397799174614609711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4089d5958388d91bb27c6b9804103272111a5297084ac26eef690df05922b46e
Date: Mon, 30 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774849493
