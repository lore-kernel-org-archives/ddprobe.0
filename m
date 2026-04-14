Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BCB3D34AA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776162454; cv=none; b=pB+8KOz5kxEIXIPKrezEF6Z/3K49ESPwg/Nxo1UZxgyfKMZz3Yo83+jC5dKVh4sqFAGQRFqN3T+6XOH+EMcoX4pzpDYPTrgFF6g+ng3qo3zbX1YkVXikHUl47Wi5PXxDXQwSh+l1kUik9nSUHBzZ6lEfnHr5CjReRHyRffXu3yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776162454; c=relaxed/simple;
	bh=NWkGrtFB41BSgfy8vRxSe/nTECuoOO8rAirQKx9Q/no=;
	h=To:Subject:From:Message-Id:Date; b=n1jDvKZcz94Sj0Ug9F+PvUfK3AVPO4o8ox7VozbHTaphI2R51e7h/LK5Z2kGwRTyHv4hSDI1x9yEFKWxmQRLiQ77skRZIW8Bxp7gtIaeyrdaGX8kxrVu8Tv91EpNUSerCzGF7RyCtCt4Etmkk6yRoYYj6qt5tJ0TtSrZi/iJ3mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4zd5iRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4zd5iRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FB1C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776162453;
	bh=NWkGrtFB41BSgfy8vRxSe/nTECuoOO8rAirQKx9Q/no=;
	h=To:Subject:From:Date:From;
	b=l4zd5iRwzhVq/jJnRmDwo9bj1jh66sK/B0c6LhnmWIIsj93O5JMzkEFuKQ/r08Ccy
	 oRiNHke9Ve/LooahLRltqXmszYEPfMwQVzJEpref9NPqcYoTIcJhUa/VHqeHaOvsV6
	 pjyTZAX3pNizZQOn8ZckV5F7xyVnNn8ljCrRdcOpaT3aNbie/M6R/nSak3DEaDXr3x
	 0jPLu9/VkRPjtSLS5RyppSoKjtgBjBaJ1E4Gr8emoSfS0x5rqBsK+KFqc++qv07YmR
	 Y+x1yJv4zJfPDnKV1beBDYtyBk5m4Hn8E9i7G74TEdUiF3LJuG5PIX8icGMXBxWhZQ
	 5KfFxudjJXuUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD97ED7B9A
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616245368.2060.6546249001984369258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b121a0d7e9a7d101ee446ebe24dc2caa99b7deebbdb7d67af7dd023a5ba637
Date: Tue, 14 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776162453
