Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48712366055
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787586034; cv=none; b=opiKI2ojIdNxiTgfJvWvAq1FcnIXkxXmqiBAxD7BZeDFfzImv9IZI3CN+5+v8QNRSbYXD0yrCNRQk+uapy12D50nCEZ51Xb6h62r0egligSPqnYW7k2OI7LKiBpgH7kOUenB6DG0YL0C3yWmzuTfJR/ISR++wdRJVeKj5mm1Vds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787586034; c=relaxed/simple;
	bh=AaqWgv7eiEvtrm4+Txkms5PVnRnVCa4wpBTlePySBrE=;
	h=To:Subject:From:Message-Id:Date; b=PGsXHH6Tf14kYW1ELhpLpuMg3cx6Ae0Cr6kb5OjDz5mmDmqh/9TJcFZnxzSPNIJ/OUUuENkqLFTJ2laxshGJakwdsjuf36p1zlBmFhMO+Y3Yq+KEKJGTCWMosvNdro3MzzkGChKdLYd5xNrI8F7yZfTzEwJYKJbbwDquairP6mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oly7iIFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oly7iIFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E0BC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787586033;
	bh=AaqWgv7eiEvtrm4+Txkms5PVnRnVCa4wpBTlePySBrE=;
	h=To:Subject:From:Date:From;
	b=Oly7iIFXj8d2MgCxKfV1H452SQvCdGTIEsM+b9PPlmrn5FDZdEmWuX7vv+dMc5REF
	 nwYaEKyWToIH21Ot4BODLcUakUQ9bkDHXMuBgy5d8JPTi7ev6mvnJs/5WmWDZ0mKsR
	 za35SQPdP7o/a/d5TOpDipLDexnAz0OhQ7IH06naoUKZykj2Uv7yZraOtCf43/Czl9
	 vlTlxyO9MoYPXnBQTqTQVKqOtiQX+hVlwG50VPkUeotT+NMjIOaqneee9EGnSpI1hE
	 J98nFaqBFnqHPmZ+MbxFsKpZD8ony9qxWg7xEx/99gtrCw+VDDZOesn/5r6YcrnHoD
	 hxYCyIJvvTK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFA3C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758603370.16026.9456134200130675616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58803f0420b885cee3787f74ecf9126bb8bfd1d0111882539da9de668417c6be
Date: Mon, 24 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787586033
