Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306014C6E
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755586194; cv=none; b=jO1nEInvocSm4d+gYMiFEnIAToItI/2zxL9dt8/MHm2YXLh3gBaxF3K5K9cfUVo0bd1/rNVMQhyr9VnEa2f528X0dgI+vOcRiXuMTJYXVEjz5FntYyuUtJL3Rc0P80NWuNa2IqyhZio+gd6R32vFM8O2RfQakZCOXg0DV9hLm64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755586194; c=relaxed/simple;
	bh=iq3El+woil2ZtN6iJxXH3E8Yutd98A8NqFFtO+AhHdM=;
	h=To:Subject:From:Message-Id:Date; b=C/J034VXK02zp/RtJo2T3P9vyhK9oc7zqKstITd8RuUmawgMMWs/pBC5sFSKta7Q2uUPeUDxci632SNluMyRTLYojaCozN+dbHM1QzH36MXogEbPEBGwGWLlmmT7CKXx2jn2KV9JlpTuVlSaRa78DBVdMdvPX8vibOnAwzeccck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgwyXCuZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgwyXCuZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A029BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755586193;
	bh=iq3El+woil2ZtN6iJxXH3E8Yutd98A8NqFFtO+AhHdM=;
	h=To:Subject:From:Date:From;
	b=kgwyXCuZMdGHPsq59jFygm1dZ1nYrqL6LuF5DxaMFvfFCU8e3FFTD+4lEn7IKDkdf
	 9jCgMuGuQsesRM2l3XcRaQKeTHPxclNJ1QvcqtbI0otp0AM8kYcVAMuOWAU00LHyMW
	 Ql4fkLtauI4Olm3pSP5hTpqkYjnF7l53DY1PaTXyQm0aJk0ZwCS71wxg/G0WYKeXPl
	 AQgpJzW4nqBf8aeuGBrZJWaFYPx6cA90c9TCrX5QeGeYmD9orPNPTVe5mA5VRRTWai
	 ABFCuGebXLFdgSFXjYMy65+DX5yT8nsGeyJNBcg6n5WCfLfYr/wEHwnUdtMgyLc/qr
	 tBoEIu6Et9WyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F440CA0EE9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558619357.18822.6524200753550721045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219bf7a73a0c55732682b844f99dfe74976acd03290149436a17079122701b49
Date: Tue, 19 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755586193
