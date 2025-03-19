Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6072B1F61C
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742350194; cv=none; b=IuUS4kHkJqi+D+IyuWH/zraVokm0y9DTd1IRLG82pmWmzqR45cm8LLrJCL4zhCbazqGs5Slu7Zf6Rs3dkn4MDc9RE1XDFvnBzrOX+3LjUGPJPwkcG1g+IRWCtNHeBmHK0HOXrBBPaWVsb2Nn154NgWOQUIx2IeK6vgqBH1el/Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742350194; c=relaxed/simple;
	bh=QzeOm4hdK45ifFT9ERNHfYxRv2ssZoQPPOkH+mRkyT0=;
	h=To:Subject:From:Message-Id:Date; b=oqcpjsgxIh7gVH02MN9vPpDp0apT4kSkcNO4HUmFkSppNMPlIK0hM6flIGB52Npa9Ttkxs7+kJGlvvolROQT0mg/wzYJTXUzSpZoWTqYbSZzHCx9c0zbg82so1AJTsp9M/FUd4IgJ9rC5cOuNmfCbPK0/BJF95GSXj9p1hfevQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G51Dv0iU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G51Dv0iU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7762C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742350193;
	bh=QzeOm4hdK45ifFT9ERNHfYxRv2ssZoQPPOkH+mRkyT0=;
	h=To:Subject:From:Date:From;
	b=G51Dv0iUIR9SOdlVrKIcIHfnSTEQhuV2VFsWde1C9eRwJT5lSo/h2Fqp7RKlrXpJN
	 XjBbS0yPDW+LL4jBBSatwyj7yiAgr6+5B8u70TLv/anISbkApXpKeFlgW4qvUKZQ1Z
	 rA2JkTDFQIF0WByMBaOCYj8cOsTWMtocW5k0EvRaQs6vS7U0ZFJkY3bMBfP0CRTmBF
	 OHtCKEQ6cOLUlDpFFZyV8ttmVjt6RZ61UtjM455bx3DAEXILlzqZO8SUqgff2vYe6U
	 phfkS6QK5H6z3hwR9Bd4M8TJsN1O0mnXmBZ5rIGJlCo99/IHHXKwDGLykZraOiLcjo
	 V6WG5eNFYQr3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBE7C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174235019366.622.920193896198776732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75d59db136acaa7002eb006cade4c35be6ac2e941ecdcc74440fa816fee6796
Date: Wed, 19 Mar 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742350193
