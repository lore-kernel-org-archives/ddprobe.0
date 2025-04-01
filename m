Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD391ACED1
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743519595; cv=none; b=Ey6kyRCLpjsvOvt6vroAweeuP/9u/NDRwxnoeeyG0QVGI6eogp7l0WnI5HakctHe3LCyqUpPtaipi5kCt3GvbGPp31202UNQMXkf8BRP0r3/vO97D1qZFuGIWCeg7GR+JWIgM+KFzWLmC+gItfVFMgxBAN3Gam+sSnXGSsYSoEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743519595; c=relaxed/simple;
	bh=+OeQTjrnlB3ei+xL1EuFl+TRrzckM5xTWjQ1Zysc3ls=;
	h=To:Subject:From:Message-Id:Date; b=kExtwK0eu1d1KqSOkhgDM5PfTTC2axqGdX5BYdIZQf2CbdaHUd3VdB4e8ZDM5yNVpV6UqHY0n7RI8Rp8UrIy7UpCBFh/U59aGBnOzZ7+g1K8MWdk8PuTlQ3RwNciMAemfIuImI47k2NHG+9UWxc8MvgXHM+ER0eraQIZe/V5mDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQYQ8QaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQYQ8QaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C2EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743519593;
	bh=+OeQTjrnlB3ei+xL1EuFl+TRrzckM5xTWjQ1Zysc3ls=;
	h=To:Subject:From:Date:From;
	b=eQYQ8QaLO0MPXjyVIbQCjWxOTdFx1ufSfAjXsMS3Lap/m3/a6syew3i+f5H44dyAe
	 LLtLHVWZp0CbHrNJrBk+uCthXcF2+NYkNdhODg3+rX9LkmyRHnnjKSTlmUzkh9k4uQ
	 Z3yzCXub1DwniOWd5WS1Qtv4RCA3y1UugUUL+jp07AawglDB/jzW2ZB/s/+8MZ2iFH
	 oz54R4+Y//fdkPI0yIBXfDPf4AgM9TEuxoXzjmvy7WaJKIy/hEDcRDD6JPlswlmrPj
	 SRpA55l0vpon4qCsss9hw0l31S3eZMNRVbK7wmUf2H+oRdnkAvG3pdbPiNmRT9aKHZ
	 rPqW+vVajxbaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19F3C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351959365.14049.12103914175042252761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce86806d1c2b251fd5883dba151f6dcab5522d70f1165540c61d60ad2640066c
Date: Tue, 01 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743519593
