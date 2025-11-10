Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE89274B27
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762790394; cv=none; b=cm3uXbtfUXepg3/bFXGel/J5WcHwB4c+y021i2mcWqyBPJlX2FZV2vDjSOojPWkTMithBbdaii56JiDbVuGXAdoJ1Iq9Y+B/uuACPI8K0IzKgWXG45g1RjKJPjXbRhFUvgztZEnhSq94bNBCBoS5nMCL7pemtn8UqcHqx5iKYwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762790394; c=relaxed/simple;
	bh=bXqJlLqxwlBQCGSqMEsXwTb7iTnPtxNdu3JBYu4IBU0=;
	h=To:Subject:From:Message-Id:Date; b=OmzOZ/1BNz/R5KvNYUPi5BkeJ+oeED3SvOinkwkeHL3l8+f3RAxmxGLV4k8zbjM3/NWW74GrYZcKwVv7XNqSQRE2LbBGNjGCM2FiBz2MxwPh51QH8ZWQMXO7/nh0ujikjjmvLdmFKKPUH8E4y1M8GCzEHpyOkZhNQuBotw8Pc5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlTIMhPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlTIMhPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6590C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762790393;
	bh=bXqJlLqxwlBQCGSqMEsXwTb7iTnPtxNdu3JBYu4IBU0=;
	h=To:Subject:From:Date:From;
	b=TlTIMhPlpijYEq/fh1KAg3CmDQUmkn1DVhpSCUAEMdgjduQpMdE+LNpax9V2KbdPQ
	 zuU/rZkot6iQ9FrVB3dCU3zHGMyzjlRvEy6qDfOJcRRQDMteRskfd1QjsP6BiCzxFb
	 IkpiICQJ5C25mch3cigua0c3/ftv/qT0JgooxAniJuXtJVklIWkyFdI61PtosoSgkm
	 WRyqXOHPombi+xY3yxMD/tKIe3mWwU2cLpwZrWuSW6l44KGtA20/13+hrLWmMdSEkm
	 ewK/djzFHVmF4X7H6FduXZh2dv2O9YFyHLwOSzptpknQB1q/WDQvt7qUHMLVcn8faE
	 JHbgZFNfdjFRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A6CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279039360.13998.7931921308223568645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef74140e297012dc35799b9e6ddee964379486fd3673cda9570ac6f496e4ca1a
Date: Mon, 10 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762790393
