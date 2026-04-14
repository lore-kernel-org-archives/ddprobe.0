Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2919531F980
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776198454; cv=none; b=Z53Ft6D3D1Ua5jgz1q7qZYiOd69sQ1EdZ7aD1r4gKJlYjUh2CnNE0E9C1meWyxihnHzd2FMXLlxlghVzLxLuaB7bYpDf/wZ9pOix7jJdKH0SjTwqy3Iu/2K/nE//Yl9CuU4Rb1PbQHPtOW0LJoAV8uoIDhjsmquxITxPb5i1NOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776198454; c=relaxed/simple;
	bh=U8M86bOO6YmKss/GzPXfEGlF4aj4aEKtBYApayGWaU0=;
	h=To:Subject:From:Message-Id:Date; b=Rol0plsYqYaHlozGod5+VXr6RNi3Th52Z1bi5BMQzKH5IDASZ+2s5Vp6qf5UAEqvFd8rILJNqZo8tTFMgKc+/bVyLXGGGEYUcP+KcqLPX/T9Uv2dLB7kRIDeGw2AAsF+S3FKary1sfTBPcwFco84JCLJp9CL1FfD2JAx2j9uWKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbLAxgvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbLAxgvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC0FC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776198453;
	bh=U8M86bOO6YmKss/GzPXfEGlF4aj4aEKtBYApayGWaU0=;
	h=To:Subject:From:Date:From;
	b=IbLAxgvw6UagjL8c6rl2GuDHStcEqhAQop1CCiAJTsrZzG1COqDJwTK5mn2Yb/pvN
	 88jt4ChbR1P2ImZHRp1tNeNrvZa9a1Rn4IGVOSJVcEEvtIwF/c9KpmhwSn9QMrObif
	 XPzZt/uj0DZHgkhReirTq7nhtgiUPuFezUBTrQlVE3L7CBXoBOuH2QqpoLfp0K3s45
	 iMysNEIAAXDT7TENiSS1SpiRxugQPikkJCNgfivimdob7pxpKwu05llAPx58ZMTd9n
	 X+x8Jh2QleSXJzWZ0uvUHDRFMz9R24wkiS6ZaZu0GoM/YdPLDBKXGOTLUM862RihN4
	 6s5OnqsMXPOgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DBCF9D0F1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619845368.4009.8403205418236109057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7476617e695562c1780019742d81bd014c9225a7c6692db0a3e9e536d0057ebb
Date: Tue, 14 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776198453
