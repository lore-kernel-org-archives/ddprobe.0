Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDC43A6B7A
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776337654; cv=none; b=pE2tyKehIUVnN90UzjXi1aHBTn083YqlCDSQOaPijU4hKVBattKnOZ04Rip7jEqrdJFxXX/sNz3yQRNOmQo/brofYJZzrSSgeL9LMdmTahzkeoQSG9IQNwnh2gpW28jUG5aJxe0wrKzXI5gQc0OtD1hUypMKERLSv8f1VzHoQA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776337654; c=relaxed/simple;
	bh=VP9jDi7Be54/k0Pe3pKqYy4Qwq6dPBIa2153OYe3LJs=;
	h=To:Subject:From:Message-Id:Date; b=eJzz615FSPqcjr1E84O+ghKN3d5nErCnXcs+5NUGTyDCBeBVrkntH9IXXNR6kHom9zObsIzSiktJk1g4HgmMLh9pcaeem8mKDZS0XtQowN+SPi5KtlceI7kxQY41ggCfddF9sebQ3Apez/2MsmhypaJKKNYvFDpKNQHNvlT7Zyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZfjXb3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZfjXb3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B657CC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776337653;
	bh=VP9jDi7Be54/k0Pe3pKqYy4Qwq6dPBIa2153OYe3LJs=;
	h=To:Subject:From:Date:From;
	b=eZfjXb3vC4wMJKz0Sr14bc/OC1fK2Zyy2pfoIZmK7S5KcBBx1JOUdQrJgswabe6+7
	 n46LOx5dSvK+I+S4mwZ5npqsYcFvL1yj7ozz/NFYVTgyB3GRj0jmfX52/fVYGGAVFa
	 ahIkOE1mPaZY0oQyWynD0yfxk/dCUvYxV+w8WOIhF4Yo+Pr2Iv7tSvHeLZNV+xklII
	 UdVvmqQxOImZVKRyO+qg0w4KL/C1nLidvc7rj91Y+BSLfsuWae9QwvoPaK1h2EPv2g
	 JUE5wOlTkiaCqWvxgTyAt7NsOieqd16nAmcAUWyQWZVOCcgx3LuXK7EDZiCmVoLI1j
	 r1f/25v5b02lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BFBF8A157
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633765368.9489.14019788940710941329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594501c0dae41bd30b86962c5ae9b06a434bdb83da2405ab74404df638ab7dbc
Date: Thu, 16 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776337653
