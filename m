Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07726163
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768343634; cv=none; b=rrgQRklI08pV3NiY2DjkBPvd3Yp8a0PHp/Ph+dgIqWfQxcCfpM1Tq9VOsusbQNzqOw4xOnkkviaHAGO3SfyvecCtaIiEFPkaHs/q3s2Azkc6BOiFCYS+DMNK3+o3emHUF5TdejHS3wKv30S2xD5RD/eW94PZ01rMcQT7shccjnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768343634; c=relaxed/simple;
	bh=Ys9nDFJ7nFLLkX4WtkNpD/WyDMFonk+uA9vaIE2TL2w=;
	h=To:Subject:From:Message-Id:Date; b=uD8BmnETTOhqKRHnptXhcMUg67EFKMal9+imRv77Bc/BCjhkprwWl2Dk7aX4qxOafaAREIc2bOIawQ4CVmgDEregcygtuEKE9+4eZz3iCv+IXGMKsu2AHn5OeEUoEq+KiU4Q5sKAUe4M8NeqisbTjYEGApCcIww7VmLBMuxHJX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1YY9jcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1YY9jcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1A7C19423
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768343633;
	bh=Ys9nDFJ7nFLLkX4WtkNpD/WyDMFonk+uA9vaIE2TL2w=;
	h=To:Subject:From:Date:From;
	b=n1YY9jcxvqVem7hSb022d6kDMf8M/Jr+BAfPDVIpwlrkdynGZWseWVBR0HX5ooiMC
	 IJfKUetFIiQXpk17ThRYstxQ/eb8/icJnlqNHPlG4YYEYCFmKCJgVwpwZxUrGLceJR
	 Xa4WtR9ChuegkaOzCdivRnsoFG/4yg0Z8s002tiarCeUNq/JnByEy2fE0LZt4JOR4D
	 yb1VMKDxQPUF4iWWP4DhAnbsFqjLtgAnOtQAPEBUUyWpHZONePqQkyJm8ma80YFx91
	 iHBg3QFl28z+9URQjKh8WvUewVCUy3eIGQbwPVETo3Ru+9WAX7AXFKIrqMY663n3eZ
	 XPeRsx5Ce7zEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92FD30CDB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834363358.7211.271485643139477142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66bffd3b883e3fa0fa70a455833bd23d1b472094da9b02ee93202ce9496c8f69
Date: Tue, 13 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768343633
