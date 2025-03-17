Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457B217BBF
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742254194; cv=none; b=Dgutr1Pn4QUxGK1IskCsZC1vKxIgapAzL1KsXviNFH7YEFuJWYQOKzF8RPoH8587y/EfGLD18A2e0Ay+T+Ni+Rkx3N2AQUf8VhNoK8ROH/r0NJxm3dfrZIDxa4eGSv6muVvGnuqLFAUzcLLktkC2WuWiZx2PiF0ai5TYm2Tfp8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742254194; c=relaxed/simple;
	bh=GkwgFdcaw83vpdVuhtpNtT4lPCBljDQ/IzC12k1bpy0=;
	h=To:Subject:From:Message-Id:Date; b=Xp18nxBqmWUilpwvwh4hxLopzjIdIluiDHiC/keStBwsaUW9hqvU1d1sWfLX9yYY14qy5PLJJRYyw0uY8iKB9T9RCS4YBEiclwMju7HRoclX5Pk7lw7AALP6b1Z3DE7HW6q9lwLiz3UzVh1oPXkjdFGuVYcV8tr6nWYuAKtbmoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYu4pXlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYu4pXlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DFCC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742254193;
	bh=GkwgFdcaw83vpdVuhtpNtT4lPCBljDQ/IzC12k1bpy0=;
	h=To:Subject:From:Date:From;
	b=eYu4pXlSYUg6A1UcCWN19UJi9fR0Hc8CG1oUuinAw8Wyx8aRzhlLf3H8uppWBvURV
	 EVpMiIYtwnCMM9yGUu95Ayi0p6vZRYxQqhJ8l+HAs65EXsoUNtCPy5/AhktyEJBr7L
	 P8gPB6L26TlWVG3HkSrIQWX+fzY+EndpRIXvK6CGXXLI5bdt2DZFXJb2pcwzTEhsAL
	 UcFERnycgiwJK26N0zISohGcR6XrOMEl/uMCvSo2tCHUX+HCCYz0rkXjkSyDbqi0Vz
	 Qf6E1Sxu8DIXrWaIauTNCUhpRPJ6Joi9tTTpSdl48tZWRAYWkojhfDqjC+Tq0WraGQ
	 7gmeMKB0YS6hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EADDC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225419363.17616.8517845496549436158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2dd1e24291d7930387f26a716ed5c56f981c382379ec3b5a00d227aa8fcecda
Date: Mon, 17 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742254193
