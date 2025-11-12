Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2305E2DC322
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762922394; cv=none; b=Yf1mOp6+MrPn1S6ssrb1Z2eutGZT2JmimP3ElhHqogj0LhnANXMreZQncDQhKzfukegV7QteXMHsm+l4yYPff58RsLp8Xqpy9/T7Iht1NKmMEcpNsvSNPwT0e41gVyIZWrA5/p7jlV7vq4aEkOXydhWUQPrMrMy1h8m8FOgRZPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762922394; c=relaxed/simple;
	bh=vD/GN1dR2D5JHdWsTXpS+x2u4q2rt4t7+n9lJgsvB+k=;
	h=To:Subject:From:Message-Id:Date; b=laje1wI078lJAwORD/YuFq8nFLgGaAm2pWKCDXR2Is18TcDON/Brqp1lgnNGfLpALuV5ZM57+M0R5rmJV4lAfq5XVylmRdrvfCi/Xt1/PQ6UtUmSiFiqADcpx6AnkUmVvcOHlBSNd3ZAxnVN3M2DCNHcof183U+ZScEdbs8POh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3mQpVj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3mQpVj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF68C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762922393;
	bh=vD/GN1dR2D5JHdWsTXpS+x2u4q2rt4t7+n9lJgsvB+k=;
	h=To:Subject:From:Date:From;
	b=o3mQpVj9THZy6i/2fcHLnjW0OxzRUhgm47TqJ6lWhYL6On6ek+YUTLKYgcxAIXym5
	 uXnq7N7tmE6Vt2c8M8GFYJDZzaSKM0FGIfljmPT/XOGPUUIn03l5r+jMIUaMVwmK5L
	 /C05jGh8tJwND5AwtnupY90lyLZsIKsvm4UIn72YNIzBld6zKTMGr1GmM/AudB/Z+x
	 zvhceL3+lPtK/qVpMo0QgYvwHEI+9+rkiXOdun49dd3QVOM1fUOHshtj7L7V2i2365
	 /FLs/NHNhxahr5C+tyz/TGQueFW7gLMXe84DAypUZCNvmNiBcHwHstq/4W2yQT9Nzl
	 zchbr79HXvCdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A011ACCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292239364.24470.3636402651332820973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6588a0983bee267bba94a84b0284567262626dac46ae9df2fcb72085e1f5ba7
Date: Wed, 12 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762922393
