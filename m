Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF32DF6C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765742574; cv=none; b=cQ3I8KP51LHvVYpqAwit4a8CxmLf4JwBsUuS8RD3wFHM0rTtrwD0TfCe4j+40O9plYoeqUDo/hmmmeypZPECuLQuYYk7toMfBkS8YH4XA4zEKYBm1Tur43/cK1km7uIWvD7XQPCsfzl7LcCjk7IjYPinlzkvNY7dxVSP11Rg4h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765742574; c=relaxed/simple;
	bh=9pI58SE/77EQ/Qr3+UUrEU4oL/b6lh1eGd21THOox7c=;
	h=To:Subject:From:Message-Id:Date; b=IyWza3YLP0a2jL2qkPtyVJLGGGrXVfwOR7jCnEpCpnp636hMbqKFOVYIcQ20TWya5GaQrCaJ/ZlOfAtFDQxtxwdLDRGqothUO2OqW9wy19Tu3tESwFOX5nTflp3am2SL58e1RwsxKFCJ050hhwPoDFPEI/7bG6/B53Hu5TIPWMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0G9f9wv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0G9f9wv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E2BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765742573;
	bh=9pI58SE/77EQ/Qr3+UUrEU4oL/b6lh1eGd21THOox7c=;
	h=To:Subject:From:Date:From;
	b=H0G9f9wv4OpcmqwA9agNdly6XxGE424FrglZKtTHNtwVKC3yR9yxegBM8OJJlKNeW
	 Z+NEwbCasBw2is/+NT/Hro22M2oYoGiR4XvZEr9jafpSNb9hAVcKhvDtrkYzkAZ64o
	 EpwPQiZIU6ONQhINTzQXdQhVJ8q9C7sRAWsexRe4EGT2MRyyDNAHlkWzuwUvRzEym0
	 JXKOGa2YNkvcf30i5MoGy1DY/a6ep9uRvMOGmpGW2UcPy8oM/r4Gdpz88lSF9gXDg8
	 MpxIcBK6tSqT5t1PDYPdo7B+1EII3jsnN0lVcsNkZw1CCG6uR8NBAoq9ynp/zaVkbL
	 vLvQTQieIqkzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928ACD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574257358.17262.16370935265186791048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052a3d55a7ec3a782804aacd0b5cc4636b22d734f230064c67709de122b84a2a
Date: Sun, 14 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765742573
