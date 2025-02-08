Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E2D1991BF
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739026554; cv=none; b=RD5TVJJkMwgp73wQXwjBym5jMfOflTnQNja7ShLKN3QyM/goUiwTwBoYWBJlW4aiF/nNHdhisf8ahbTkyHRpKmLfheQoOcmBeucxWRGbB+Uu9X1P7auzk70RjIL8F32GZy7HgJTx9SsBDOdbNQLWD4ibbMTscOVLWYeLjixgevQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739026554; c=relaxed/simple;
	bh=khF6beFZO5tmxrNqyXhdpAhlNvMSuCVs1ZiJrty23mc=;
	h=To:Subject:From:Message-Id:Date; b=BD2wDmXpBUGes4XfOzrgYAhQyHlDUGN9Oqn/qYhpS1q4h61GjywHgcnXlBQ9ZJ5dqsJCGunelSgnw5QY2cqMzFFYL1n+KyvJzdtmHY0P/Lm0AiZk5USqQ/YpAJubB92/f0fj5YYs5MVL2CbLtHWPlNe7wavzD4D4GxqVaibvUBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzAKC0Fx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzAKC0Fx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D8CC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739026553;
	bh=khF6beFZO5tmxrNqyXhdpAhlNvMSuCVs1ZiJrty23mc=;
	h=To:Subject:From:Date:From;
	b=ZzAKC0FxY78GwQq58p/XPI24Tw/aqU4cG8M+CeAtYJmq3t1+AeuK7hL1BC75K7K9t
	 vxFRz7HFOO6Wy5CR0T6t0DBQOSY9C7eO2f88HnM48OTDGTBujyhY0Yy0lmGLSn7GU2
	 oQ9dUqtoPszkTvJV5fro9u83iU2UqvR/UKYd4dBhbhisX1d2RLNH2+gWAzfv9ZM//9
	 8NCzTw6PEd6aNDWAoz1gT+ZU+XPiStnqWX9/2XJEFaOWqZj7aH5B3Y1iM/1tibixxY
	 Yd99mR7UCWdao0LffrHEXvz5ojTO8DSGIkSGsNeIgOKdtCb6I7ojGlMHXToB7fS7hW
	 K5u985ead+e7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C3AC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902655366.3815.8170731920944821823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ed220a56e28f6633322d05bb7b0cdf701a3efa532bca9f92218442e10920bd
Date: Sat, 08 Feb 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739026553
