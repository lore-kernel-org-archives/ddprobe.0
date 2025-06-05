Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480291C27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749110994; cv=none; b=Qi1tiu/k/Zf7z2n09AYvxhJDMSGKu0+LVqxZvPzNXSmGYm8izzvI26Wb9iS/KHZ+tNJmVIhLZ7TVwITZp8dLYF9QrvBNYZqg3rxq+FoxZgu5cP0LK5TLbWlWRQPNTq1s4pNyKFELmc7ADYbLdVBH6SzvYctRJCYzzivjCO1g6xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749110994; c=relaxed/simple;
	bh=C1B4SnY5aqVM9eYo4M+0nAOLM1w9Ub4nPWikEcGcBds=;
	h=To:Subject:From:Message-Id:Date; b=RiZlkTS/j4Ca9rZ++Mxdo/2JqAqBOCHa4zQ5+BW69inU7NJfh+UFumz5cWABy76i5fjzL57eaa8ebQITidaWyVHDPUSxNBF2ZKjQuBdW7jtIXOGChel4vuioamKF88zGnL34udt1Tz98xvbbXVuBZlLPTcAeKp0CFGHePqof9ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8XdStnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8XdStnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1FFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749110993;
	bh=C1B4SnY5aqVM9eYo4M+0nAOLM1w9Ub4nPWikEcGcBds=;
	h=To:Subject:From:Date:From;
	b=Y8XdStnOWH8PlnEHZaLNA3Tpr9pEWErL3nxCiIcMJW6vx3oLP3rxexY2Iz3/sBHNq
	 YwBBX7/qYcSwD9hog4zMdszzYgWkRdY5GkZacpOJuISxD2MYT5AQh5eclhQCC2EOHw
	 e2GSPNGKdj+O8VH6vGIKeElAeaiVtiguaAiY+wRO59Z48BvvjpDxtHVrYKzNt3qRMr
	 eR+0TGi1E8uf82FRmxEhjaX+XWJf2blJC4WhKAUMf1bTg2t0pxUOsPTfY4z9DFFCmM
	 kxOhx6SpjDFosFqxb1yKr6z54qVTViYyanyb01DJhBO46R+eZZe1iooiaNegxcYg7h
	 Au2kFiVV9SGWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E49C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911099359.6840.15202568890140666726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b4832101c418bbefd689ee79957eff19d1a33ad3b066bab3758bd71a598cfb
Date: Thu, 05 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749110993
