Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AE613774D
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763689914; cv=none; b=aHKXHgPFGXR4guV0QXCx9Bv3rmD+PXAJ891hQ7J0Ym3mBYYgcZApaCpJJ4beB4kGyfdhb7rP7Q8SKOWTML6U/vPF9qpMwMW/acaV1afJdGmoVCWspcpdIVdyudiePpbmqAGymmcLi6Sgl/bRMuRvoYHE2OSLNhGdphKx4ra+PW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763689914; c=relaxed/simple;
	bh=qQ55pxZ+cWyw0CZTa80pqlJ4PbIK2c6LANsS16EAbN4=;
	h=To:Subject:From:Message-Id:Date; b=YH3awhtxb1ZAe9oRqpnMLkCH+z5tg3UZHAeSSbse3vTh65xkX/nPkTacGRwHfgl6vlVsQxXPobkz1HTzQHqrw02rEA+HvIxpDQ4Fx1YnYXQbyJryAD4X85SUipyWwwm4TecmdJJTlzj+eGsK8pMzkuYGPRQsAacBRhrh3NJV5DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEcUuNJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEcUuNJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B8DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763689913;
	bh=qQ55pxZ+cWyw0CZTa80pqlJ4PbIK2c6LANsS16EAbN4=;
	h=To:Subject:From:Date:From;
	b=VEcUuNJnNG92x6pIz+/nj8nN5AzgkLUJMJfvRHwMDuQklAagC1Zp5RNnqiiY6tdTo
	 6pt4RmVowqi8KOMIlQUh5CEq4RhrgXIQT0pXQ3Mq9IOLvPtqtBx7xsKHZyMCXGHc43
	 WvO/pijuLlJKPYTjiuUNnatBcNJnEsRdl3lu9/HzHmVU0lfSCiQym0isx03hq8+TJk
	 c4m/9S9cGxylWdFVp4vN6R8G64Tq6tMczHj4iQxOxLL5n6lKIg3RVizsNDn0Eo0LFJ
	 IajFTEf/frDSZpfPyXozD7wquDhX5puGrxFr7nnptfoTisasZJDXmGdWI46pus6DEm
	 bfuiov3q0XYuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94700CFA466
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368991359.12035.14332032076401737193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a128c8511080cf30670bbf4cdf4d49e46e1d725873eab165203a876f8751979
Date: Fri, 21 Nov 2025 01:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763689913
