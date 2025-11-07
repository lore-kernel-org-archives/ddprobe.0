Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0824318E1F
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762546794; cv=none; b=hA4JwbJa/33xHrM9rV9ijQ94L4DI3QhOSh5k3qCrGsccFaf313zkZqFxnxCBj+jWAbuF7IHK0iAbuNGM9u8bOMe3w0jD7m1qQ5Rfua/xixMkCuwQi/1tWD1l717Z8KdQEnUu/rFMrp+6eMsrKVa5RjgyjsYdox6vBBZVKMVGcNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762546794; c=relaxed/simple;
	bh=DmZ5MldQJy4AiQCpcdXBPfx23LAY49phXuAkpTDQQQA=;
	h=To:Subject:From:Message-Id:Date; b=r+tyWFIQiInemv6j6LMBYIb0Imcx38OlWF70EYVXJm8LFYOl9e/pq87g+QSxAKC3Q2aXj4I6CryqWQQCsfjI7LU5bxq2teg7HpdYb+PNgvrHGT2/+GuK5rw1nUqhbmFP1j7E6GKrNVGBevEv2LdadaMv1G58Xn0k67H5r9acE/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSeZUqTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSeZUqTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00C6C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762546793;
	bh=DmZ5MldQJy4AiQCpcdXBPfx23LAY49phXuAkpTDQQQA=;
	h=To:Subject:From:Date:From;
	b=VSeZUqTtR0184VuFvslJshrv2i3XDUSyFwiD4VXxYlyxiXbicZpaYAvnoJgirIpJq
	 Dl4jfj3VVdoMZKz5bQ9pB/FapBXJQKqYEzuRdQyORLf9PHapmthsPduVRSUBxY5pj9
	 kBIPyB331dXeKP9FM2eSCosX5WWcQwrAtl4X9gbXKYEQ/70HLloCNNrWs2qoH/4Kcx
	 K2W9402UZni1Qi81Fq+16dKcKlmOMCSEIcexLGJ23oOZesCzHJj6HYzM/6usrmnqJS
	 vAr40I9RGO4Ry3f9ols/JKPl4AxkafN6gv+OtRuj79zZ74GLn7KWZPLIbCM8CfdF5X
	 V8cC4nEHBYvuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDFCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254679358.23564.166293612847408418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d97a0dbb561942d1a3c3cf1e4dfe4deae3fcd15b2913628ca3d0b9663e46c6b
Date: Fri, 07 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762546793
