Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204583FBA4
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714936943; cv=none; b=RDJEZpWbRG/NzYxxPvrF3L53xlNmsnNi5i7Vi+tusXBfTTynpJwA6XixRm6DxJabZh/tZxqhUdEs/xQxRLvW7AhxDhoU1PBBDHv2dw2NlNYOqm73o+B1njU73I13Tsg2tEEr709AhM7xzJRGUwzZD6a1iPfJupW1AxUg1uXJJWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714936943; c=relaxed/simple;
	bh=lFhcvuFx7QuCbCA3aUH1vULwI4QX4k2TdyYWghoigX4=;
	h=To:Subject:From:Message-Id:Date; b=Ll1Ci5WbmgJjlEVFOoNYPCNfiu1Axw/UA9SAXyl9XWNlXFm1edG72elVZcXoKl5ADp2N33qFc0PJkelZSkhbDPKuAos8+0xHFF1HFF2/YGLqq00e+Vp0V/rpnw9GsR86aa6Pt7/PfIVHFoog2Ho1E6MnZI1TMR2RHMKh7lxXfQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfvKw7Jj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfvKw7Jj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9F3FC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714936942;
	bh=lFhcvuFx7QuCbCA3aUH1vULwI4QX4k2TdyYWghoigX4=;
	h=To:Subject:From:Date:From;
	b=OfvKw7JjnqXrJug+eFCKu43ObbB+wdYdGVf3xy219BS6yni68Ab2zESXEhbqGElzv
	 7utoz3TWb/sVxYNK8C1Agg1keAYuA5EAS+Yt7e1T5t01ZXmBFXWDpWLdGpVFUkfLft
	 wtTjqG7qF9LEodCOSyeDJObKAhP6+YoDIYh7PWxOKnTJ2UItaDmTGapiabXt25U17v
	 bCR8c+ucBkxIMDeqFvDitnqbHzpRfJTxU2PaVqKuNTO815JNqMRLFfRm98S/p2kvtc
	 eLGk298BLLPTgH91OADPN9nNaacmS3vjBAOaY2iMTF8zH83BK2ZkdoWJG5rekg4HMa
	 yj5+oQ9ZigHWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C28C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493694283.913.2859358742661367591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31973c4bc08252a84d20f3784af1a509953a3e2d8c9524b92242beb11c087bb
Date: Sun, 05 May 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714936942
