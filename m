Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7325FCA45
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782102394; cv=none; b=aKUwkLT+rXRuOWcWBZ/I6dm++ZIT8ctnH/OD4J7ake0kyjqRL4DnExwig3L506+NEJm6r4BsWAQr4A2WYGPxoljUHd/Tn2+zDjCryJOXFotF0QJPYk0nJKgOG5VlNdrxc46Ea9HTnGICjPAt4J+9yPMM8pAShWhl9l7hApmgc2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782102394; c=relaxed/simple;
	bh=tUZWKn/Bx/c54oN0b6Qnw/pLfmnri2cLtW4dxKyAUV8=;
	h=To:Subject:From:Message-Id:Date; b=WPwFnxdm+D3Vd8P0aeHNj+R3HTRTwc4zU0dBw+HjAm+DW0+WX44/71Ilz8BRI2wquUzr+kil5HbUg0y9Xcg5aliUR44Byn8i1GLQhRGnEzhXtc9DXebVUNj83/RG3vmFITqt+jK3Pp1Vqv2cGG8EXYYJzT+j8WhxVAd4+449aug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQR8IXn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQR8IXn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3EF8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782102393;
	bh=tUZWKn/Bx/c54oN0b6Qnw/pLfmnri2cLtW4dxKyAUV8=;
	h=To:Subject:From:Date:From;
	b=SQR8IXn98oe0DHBljPQI7CvHHlaq2RTDLBf/bphZ/bDurJQAfOpMDcPeiKX69C2eK
	 zTArvWgtvWK6za8s6ypGj2KbmJ+CKEw0lvvF5YeX4AvMSdMmJr2jOMv0ENfeK3dV6S
	 k21NlQmitt9zcxHT0UTCK6VUc9rTwwaVWZHH6bApy7GXHC6TVwzK4FxMekcQCP+8xa
	 AEfmA0fd+Wla9esvbAiC4/M9K4akPUun68VY1hxZGljQPz5LobdpCq3UgAptMb94O4
	 lt5Axvqz6kF+oOB6woTL50HfWedt9FlUX9z6q5QJhQPYxg1BTgpDbMaxzrercte00J
	 mmTK7XiTGZ00Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E57CD98F6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210239378.20483.16899839300031478185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7feb624f98c6072f6b45521e626d7235bcac317451b0205901194b4197530161
Date: Mon, 22 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782102393
