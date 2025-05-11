Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A6CBE4A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747003794; cv=none; b=nbSaQFkYkKObLcBDbmXU0t8CjqcKIJHWpg53YRt/87v+buOlhjTtjflVKMI+ejuTsRp95luY7nPbZuNWMwA0Jvu4f6ZOzMrrL92++A6gfVwifKKx4fvpN+1XNhhMBpFGU1k0nZ6xdH6tMMoXDe9VppdVC+maq1esQvpHP3lPBdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747003794; c=relaxed/simple;
	bh=2rlBhokLyg7WFhVmHRJq3fNvPX7v/94+RppyGyJyc+M=;
	h=To:Subject:From:Message-Id:Date; b=Sl1htWM8H1sv1aaNeYf8/wuuqGgtbxG0a1IYLVvA4/D5OE1LFyUnRX/0y12Y4qQaiEyWZqNwXDUM0ZNdBqgR3c1Y59AzLDrSsGNsrqyHpXcjwaIBV24zG9nfBv/xcMn965lv4Z0CFI1dqjLubkrASX91VQ8671V8s2u6Ndh2Ymo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra1gm/o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra1gm/o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D569C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747003793;
	bh=2rlBhokLyg7WFhVmHRJq3fNvPX7v/94+RppyGyJyc+M=;
	h=To:Subject:From:Date:From;
	b=ra1gm/o/f91oaHV2ixlsRmGIiV0m1ZO6qqmrCsJnmFlVoYPU4HWZzHR83DGaKjZef
	 42T6SDjlx58YJJJrjZPV3sMUch2MrRXAnSLO840YEaUS+39ghBWoVjDQOMswCKEavr
	 RC1+WH6hJkH2Wo6RF5WCbOtehf2KTM5VKc+PEHerkLnPr4CtHurrwoY0bBfFuzuJJO
	 uNGPGi81XH/vbeQoCUfRTB1SOtYNXULhz2PEXlk58fAkwMkCxDvoLLhiXUMgVXWwDG
	 pdySzPhg2LYDQ4v/xYiHQTCGB7aUVmB6tJMHy+ZxNcozU04nU1raqIs4WnGTM2KLZp
	 KYL7nQXgs7BNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7BEC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700379357.26418.17933348143557879890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4647034fb0a2b9ec813de5e0b20b3fbe008f7d36224a63c705c6bc6a1819aa
Date: Sun, 11 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747003793
