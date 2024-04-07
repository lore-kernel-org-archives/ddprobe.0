Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29373B7AC
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712512097; cv=none; b=SMjUFYNNhGs4KmvRhV3V8SHiH4uOrHUG18oEa61CdfNZT65swO7IZzwWiu3trbgRwnrMaQoJyob/d6FteYF5ScQUlhnn5a8u+8HL8zLT7j7QWJD2YZDu2CL9+lLrCxQhn2Q2g9fg7jrQJ+WODcfj7l1WRi6vRhVwDhAM3KLqVgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712512097; c=relaxed/simple;
	bh=HDjMfGRxIzC2pq9kQY5ZY+6XxI2yVKFll+w8PJhF9/U=;
	h=To:Subject:From:Message-Id:Date; b=g6+mch+WvVMeV8YpVDw+v5cTBYD2AM+4mAZGcAmfq5jhGltSRO6Mivj/YGJbxJLMFNZBAMagCmHBEtGS5m/lk8VhoiAOuiueWYdcp1C+Un5Mlyj+h8C69j5yw6zIogCOVhPfPg2GPa11h6c/KeiQAx6WvEy8bepJsn/Kcy3tqe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KU1+yLti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KU1+yLti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79BA8C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712512096;
	bh=HDjMfGRxIzC2pq9kQY5ZY+6XxI2yVKFll+w8PJhF9/U=;
	h=To:Subject:From:Date:From;
	b=KU1+yLtijRaJQjX99yZ0NI7E06gr8agxE7saqOjADReT0FfTGJhjHDvGWVdb2HPpn
	 ldOz4PXfRN7+BuvIm4KRdo19JsdtbUzQsBfiZo2K2yaOjUxkuY26G2ahz5wb2eYcNf
	 m7ghaQ387hfyzt8qCd98rsuxu0LZaAcyFnPHJcn8KgcjB1hyowNgtoYQlp8p2wpP7w
	 ehgQZKV89xe6xo/gV6J5wNU/zRFs4k2QJqj2TGaSDgY81ajcJt0CyHDNcVrBNNur3O
	 efcT7cWDQd2v8VjWNnjBCcN2cdu4jL3ySMtJyYlw2EZh3OSpdsT7g6pH2A8KKg8d/Z
	 WbA36VpaDJyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657FCCD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171251209640.12924.3866369285351879615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31e7d5127ef485b72da7250b6e8859b5270f776d11d63274e92b6c6dae241ca
Date: Sun, 07 Apr 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712512096
