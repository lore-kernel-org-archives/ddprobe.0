Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708FB353EF5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769125434; cv=none; b=l+IhXGEtHa3s4iRa55MouQtCO8fC0WOmvMX1cxU7MIHaRBKDEEg4HfOBBIn6wNdXD1Xfgz2JLTWIJUmKG6L6VpLOVwFPPPvZnat4qm4cJJiYMqNwdnod4eAE2l8B16Uge44oPwS2likKEkLMaaHN7qHVPIsw7E02W3TnPeiiRD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769125434; c=relaxed/simple;
	bh=wBl3q/Vzvnfmd2a/q30Ft9edfphEMKPhzbfaQPE9oOk=;
	h=To:Subject:From:Message-Id:Date; b=TgvZO8r78rcE/P8mRly+kT36WcAZmcXJZsDh9j/Hjtc7jNRv+E5WRxxTluuSyg6v63FSpUFjle0l3T76G8+YN9U7g1cfrbwTJhzuurSFNRVtMpRFoCc9n4DMPwPMJYYYbw0P7TCKqv9M33IzO0ijM8wK+GQpw5OMoK1t+wKvyJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOy1l68r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOy1l68r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39D0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769125433;
	bh=wBl3q/Vzvnfmd2a/q30Ft9edfphEMKPhzbfaQPE9oOk=;
	h=To:Subject:From:Date:From;
	b=hOy1l68rlb0OXOThpldpVUdVlkf8yLLx8/1rot+2qxjT7m2nccZ03vyXthjGczj+k
	 Eh6875CB2QR2JCuZrC293lTJiLpoZJLNo102p9YZm4gRTtOKLZ6wNQnVFe0PnC6BAj
	 En5Ph4pwzCUV4beXayeEEflOZ7GLml356fE34Lng4MCUhRPl/4Au6KC/1Vkz02MFZ2
	 V9DEFf//VawTp6GzM4a3ujvAkXMfJNhdJPYrCgbe2Ap/v14J/JK8yU4bE3jnYeiUXj
	 Sdv1wuLs6vEOtg0CKsAOh4zOBwKVyd9S/jO1uOwlFQmvKpx03+5XIAEKO7fimBtEFd
	 hTF35TqAw65tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C6D6CFAC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912543358.16225.1530857827451819392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048a690f33f38f95755adbfa44fd2b6536437365b96e350b337740722c93a541
Date: Thu, 22 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769125433
