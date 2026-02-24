Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053CC18DF80
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771931694; cv=none; b=vGUi3tb/4XpbBiCGcK7KX5x5j9N3gnysHH3uz4u/dN+39Rg9VdraDChBMql8y01V2ANB/dLXZ15o3Pe8s+jUvCFQL6STiRXQsxG0DS2DonH96PqSeKyEAvEOu+BDbUL+xezGY4IJUfcvYCWaQxmlmGOV3oP3lkU2AB4oYcvp6YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771931694; c=relaxed/simple;
	bh=o+sA/27yhCrrkd5UwDoG+zKfeRIwEheVQBfcO+RTQF4=;
	h=To:Subject:From:Message-Id:Date; b=eVj/a2HidwfcNf3fIvl8YnZaKd998Naw9WnO0XjhfV8zYSm7GvZWqkZjkmEnvpuuMhZeCwZid7ql2efyIO7IrTdSnN6jml5CR9u8++J7aAc/k7RkD6hO1wVu7qN10XFC2d8YI3dm7QO0PZJonaRmr7Y6TSwHq/+qah4p6SLiSuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVBzyZkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVBzyZkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B7AC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771931693;
	bh=o+sA/27yhCrrkd5UwDoG+zKfeRIwEheVQBfcO+RTQF4=;
	h=To:Subject:From:Date:From;
	b=eVBzyZkEF97RHC/3NmCgOm7LJZEE8vW42fHxe88RjFWFNIpMBcKkN4lEhKkOwX1Hy
	 V4NvSGfXpXCOmDy75gf/2sVj61jfmfVtCaI8Vcd2Zs82I6JF4u8dupS1OgFcWsPtp9
	 UjotthaApy9YdkHp8L2xC1KVIei0LTYhMReXUJFPk9ABYwcEQFMlOi6n7oBSoSZ5ie
	 9RXZ7MzERXP2y6mGinaCluiBIJqAcjnrfY3lgkdYz9Vfl0ECwOoDdE7OqTdkI8KrYy
	 I/BIkIvE0iZ5V8v5Qxg67dSpuev7vmIn0RUZno2o1FHprpfnKXueg8vWLC0NDDTrn4
	 a2FcnUNKEAToQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C7E9B250
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193169358.13861.431578635572756725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998dc378bcd6ac4602694374887a9cc970a23c944ef5a3109f5bb5d1b5bd84b3
Date: Tue, 24 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771931693
