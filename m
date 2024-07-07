Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9DA46B8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720320983; cv=none; b=LQkuQbbO8dnmIholxXuY6nCnOZIJpn8mxHJ6/YYCl0n/JIik/zNPq5L4y45EbtGDn9P/8I9nTNjucM4X/2HqK5EarxdRGc3K/TA6lcUPmPVJR7nnjzArxkZk6h5xOuPYzlpAcbHKFYVkYAmyYAZRk7mdqNYalAfnW2Gj4Sf0uKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720320983; c=relaxed/simple;
	bh=VdkUqfAl4Zdv8Ol1I1xVQZGyKBDv2u7mixOR1DbvvDE=;
	h=To:Subject:From:Message-Id:Date; b=g6rTQGJCeS5IFxnR3aWwx8bB177c1bJKRgvKiuD0jBzA06ogFU3y89h5/kdrnNBGrWVTosOJAEN6M3KOe81JOKeBb6ffb8v1b6yRTVnSNboBQz7K6Zxa6k2KUzOk0FURqaQ6XGXopt2a3rxEgU7SZ+5nXfMT4qYRuCgd9bvtvV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CL2wuT1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CL2wuT1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFD1C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720320982;
	bh=VdkUqfAl4Zdv8Ol1I1xVQZGyKBDv2u7mixOR1DbvvDE=;
	h=To:Subject:From:Date:From;
	b=CL2wuT1gnrHe2lZt6uGYsb8zWxzSoQ4bO0NKJW3iNpRi20GYZ0dqCYfoqZkqi/WXj
	 kdBsBTBy+8xxbCLNJjiJUj3KQWGc6TGKm0jfSfzckIQdj9d05lutinwzvNm0HZurlX
	 ORCBQ5+/wPWNvF3CaMKtg3R+1QBJQ+K6CF9joZj7frHUD1Pmg1Cg15PdEFoGE29U5g
	 o1eH1anntCmOrpCAMjZxbFwDk8nM9FLmC6VoA73NxkGRlY+p9iE8SfXUscguwa9hJ5
	 awrCf+IUdX7xFw1De4wbsSQYIs6yzZpmFPl/sfPaMlDHiN1bUiFgwT3mOu/gjSBp87
	 tk9ATaCuZP6NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E8DC2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032098276.28867.8182054864537660038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4841ff5b3333765526c3cc86e0342df42c0e29da8464598965907e5e564d30
Date: Sun, 07 Jul 2024 02:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720320982
