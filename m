Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F28146A66
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756540794; cv=none; b=e7uSNmL1ohrvDD0UQSc/hbRNiJIN2jF+/1oP8ndenz5ihZyTP9wKei125wQVHor/9h5jMWcAgXNnqSBOdA2tsSMkKiHPAHG+tLML6UyN+q/XqRbZyOfr0sSk49wXevz7WyWJxm1L5eznliCaGk67rCv8sPHzucShaT8xegG4Xi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756540794; c=relaxed/simple;
	bh=NihtyB82Gju6lBwlJvX9wPMdGGjxk6Kfxhk5DMQg8io=;
	h=To:Subject:From:Message-Id:Date; b=Z6EvS1UCbAOFX82GILDE65RtkVYHSi40cvgWgjV2oQ/EY8LJ564+qZ7ijqInhdjYRuehsh3sKWpBpLMGSmQhvbHuARl6NFJEOumaYpgaqx9/Wp5FP4NblUK9E1oF8hGd9XRfwWquxfs6a104CywS86Z9lRxpQV9zQkDTmR0hnNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gt/4Mw5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gt/4Mw5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756540793;
	bh=NihtyB82Gju6lBwlJvX9wPMdGGjxk6Kfxhk5DMQg8io=;
	h=To:Subject:From:Date:From;
	b=gt/4Mw5XkhyQkJEdCtiNuc7m+SN96XZfuoqcgwZYMRnJf/sSEpuQfT0Ai2jFTpog2
	 DLptO1aTsyelk6BJFvalEikGtA5AdYYfzMWoj6hJ7MCI95nkJIlZKiVbirdC0iWM6Q
	 sFOpPkzQaG9uoLI040ZFSnDt9ivrsDTr5F9V9cwca/eQbTVaAkowo2OjR3gPY2Ihrl
	 RbR3LMcXPBTvx+FYrhlCQnuqME6iLxP9eD3LDhqf7TnpwBkfQFiyOszk0hZ2E0Bm1X
	 hekxpaDkvfLEsQfkB4kSfU0+KNOgkyY/WD8UbHZwZAwDhDjY8Efubn2TYXOiKCSK2k
	 ESWjvJpYfbVkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE13CA0FFE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654079357.6272.12569921837029112709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23203cc69e7dec605a6bb01ded6f476074c31762f8dc7ce07f27dbc4e9a8d5b6
Date: Sat, 30 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756540793
