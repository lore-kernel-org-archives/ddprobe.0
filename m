Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2334C25E469
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772862894; cv=none; b=g6ndc1w0aw/hobVDt1fNggu9lxq1rZB3n9Sb0woq6VAKyKlgcoQwTqqmGXIYMR9FxQ1bTPAP3eLkLJQ8rNWhj34Mzhte40/EkIPntY0sVfJHPPkE1c7KsW3Gk7sPLpj2LTiK7HgOFXrvEg46tVltm4LUxr1CwTA+p/7asan2bw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772862894; c=relaxed/simple;
	bh=7f2L4oAWaWDPK0f15tRo7oAa5faM9zYtIEy/MpZu/3o=;
	h=To:Subject:From:Message-Id:Date; b=of8Q7SQCi4LBHVkI8JCRqSilXiT7guZRO14MGBLrf6stnKmWJ6eVLbkg+wkUXki/NO/B2UYWaknmnkbDglft11m7mzlk77DuBiUI0oxQ5qmCLe1bTHKmpjxSng1trTYMrZeDm7UvboKEMlpdmGkC9AvOK0b8r8F6WqMFVqr7+Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBu2QON+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBu2QON+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF706C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772862893;
	bh=7f2L4oAWaWDPK0f15tRo7oAa5faM9zYtIEy/MpZu/3o=;
	h=To:Subject:From:Date:From;
	b=cBu2QON+kbkhN2M+3fGAA+fKr3349eI/uBjMM0sSbp0x2DVsczJf7H97LgrdCAuaW
	 eO58voZJAZwg0YS/Cuag8CKwy3/PrRRrQAOu9hs5N3UUmhwfSQRBMhK4feJIC+CDUv
	 cJmZn+wPVjPCCiIPEktDzvUC1TSZrZaxszKCHMYayo3e0+xmXy0M7hTBt3ZvtADU7k
	 d1TYIGSNWSGRtzDC9e8P8XlmtzIzACquda1O6Te45Paa5moDSiYJ5Jct/cqoxuhTBy
	 R5H429PFTMJI7T5z9WJpiFmZioWNVJ3hyO7fQoh7hoCQrJedgDO0rliCXXMyazV4oy
	 QEwbGKaL3sW/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75FCFC9ECF
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286289363.8314.5204456429334153871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84013a81ed319e8e3b9234f1c93b5e7600f6b3d82a1b2e98572d0f54c9d90f16
Date: Sat, 07 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772862893
