Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307AF1CD2C
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752699596; cv=none; b=FyJPcg3lnfmes8m8mjBMFkQdukjquTWojeK2qra5TfkF+9D6r0Tz3x27GIVQf6ii59mp41QI1Bo1ndndcQToKmsukHOepcNdd7AtdVx67UJcfy1CRw3Cd4imgw7svTXGV5LWnEOkqe7d/aRNSjFjKRCA9dyYOcK+6S2qUHWAgg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752699596; c=relaxed/simple;
	bh=SjpccOm2MIXnQwJZwamKLEtFDGKwLl0fHMNP5rD1jc4=;
	h=To:Subject:From:Message-Id:Date; b=GYKgKaM8IvLS1VcFnmtz04D8JzsWWWORWVej3KH2Q0H9+rsZ7DBcKwiOQSPCBmqS8rb5SMFybSMDZnni8MlGHWVYbHtxiOH0yusDbphyGfGLwU8U+FwuSU6/mloJOwLL2oXI6hbHROwhJTiPvXkhLXuWTrOMzah1zch8OAp7dNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRhcpVTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRhcpVTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752699593;
	bh=SjpccOm2MIXnQwJZwamKLEtFDGKwLl0fHMNP5rD1jc4=;
	h=To:Subject:From:Date:From;
	b=RRhcpVTSYVIio0fJDa7ljarcX/6pDEX+gMC/aZ/4tVQhylRC0t2bVLBYS6Uv+2AA0
	 Z8lKVBwYJGdqkAhz5b+TkQcIVxSW6Xeh7fgnACE5EqwWeYROopkmJ6IboIhggB2eIW
	 mIR2VHerIbztwWLBIhf3fDXVotluwuZBTeKo3HmU9+QT+Mjy8XbefaEUlfrVXsEnXz
	 MJEhYN5g6/t/N7F1FDiGIsLCoD4u6Og/WwBUsuFVqYGb4OKvEvCwHPu+a0i8ItuxAN
	 fqoTY/r3QUMk9+DN21k2BSLy/5bcpGICQ6BSS3jnlyevXWObXYKYXjAjpLtT66Yw3o
	 FMmemAtH9Pyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD3C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269959358.32128.7790281250976515662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df12649e607c4725245e8f3388656d024cbf3666d7544e16774515ce21ac5e8
Date: Wed, 16 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752699593
